package poly.persistance.redis.impl;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ser.std.StringSerializer;

import poly.dto.MyJsonDTO;
import poly.persistance.redis.IMyRedisMapper;
import poly.util.CmmUtil;

@Component("MyRedisMapper")
public class MyRedisMapper implements IMyRedisMapper{

	@Autowired
	public RedisTemplate<String, Object> redisDB;
	
	private Logger log = Logger.getLogger(this.getClass());

	@Override
	public void doSaveData() throws Exception {
		
		// �α� ���(���� ���� �α׸� ���� �� �Լ��� �����ߴ��� �ľ��ϱ� �����ϴ�.
		log.info(this.getClass().getName() + ".getCacheData service start!");
		
		String redisKey = "Test01";
		String saveData = "�� ����Ǵ� �������̴�.";
		
		/*
		 * redis ���� �� �б⿡ ���� ������ Ÿ�� ����(String Ÿ������ ������)
		 */
		redisDB.setKeySerializer(new StringRedisSerializer()); // String Ÿ��
		redisDB.setValueSerializer(new StringRedisSerializer()); // String Ÿ��
		
		/*
		 * 2 �����Ͱ� �����ϸ� �ٷ� ��ȯ
		 */
		if(redisDB.hasKey(redisKey)) {
			String res = (String) redisDB.opsForValue().get(redisKey);
			
			log.info("res : " + res);
		} else {
			redisDB.opsForValue().set(redisKey, saveData);
			
			redisDB.expire(redisKey, 2, TimeUnit.DAYS);
			
			log.info("No Data!!");
		}
	}

	@Override
	public void doSaveDataforList() throws Exception {
		// �α� ���(���� ���� �α׸� ���� �� �Լ��� �����ߴ��� �ľ��ϱ� �����ϴ�.
		log.info(this.getClass().getName() + ".doSaveDataforList start!");
				
		String redisKey = "Test02-List";
		
		/*
		 * redis ���� �� �б⿡ ���� ������ Ÿ�� ����(String Ÿ������ ������)
		 */
		redisDB.setKeySerializer(new StringRedisSerializer());
		redisDB.setValueSerializer(new StringRedisSerializer());
		
		if (redisDB.hasKey(redisKey)) {
			
			// Redis�� ����� ������ ��ü ��������
			// ������ �ε����� 0���� �����ϸ�, ������ ���ڰ��� -1�� �����ϸ� ��� ������
			List<String> pList = (List)redisDB.opsForList().range(redisKey, 0, -1);
			
			Iterator<String> it = pList.iterator();
			
			while(it.hasNext()) {
				String data = (String)it.next();
				
				log.info("data : " + data);
			}
			
		} else {
			
			// List�� �迭�� ���� ���� ���� �����Ͱ� �����Ǳ� ������ �ݺ����� ���� ������ ����
			for (int i = 0; i < 10; i++) {
				// �������� ����
//				redisDB.opsForList().rightPush(redisKey, "[" + i + "] ��° �������Դϴ�.");
				
				// �������� ����
				redisDB.opsForList().leftPush(redisKey, "[" + i + "] ��° �������Դϴ�.");
			}
			
			redisDB.expire(redisKey, 5, TimeUnit.HOURS);
			
			log.info("Save Data!!");
		}
		
	}

	/**
	 * DTO�� Ȱ���� JSON ������ ����
	 */
	@Override
	public void doSaveDataforListJSON() throws Exception {
		
		// �α� ���(���� ���� �α׸� ���� �� �Լ��� �����ߴ��� �ľ��ϱ� �����ϴ�.)
		log.info(this.getClass().getName() + ".doSaveDataforList start!");
		
		String redisKey = "Test02-List-JSON";
		
		/*
		 * redis ���� �� �б⿡ ���� ������ Ÿ�� ����(String Ÿ������ ������)
		 */
		redisDB.setKeySerializer(new StringRedisSerializer()); // String Ÿ��
		
		//DTO�� JSON ������ ����
		redisDB.setValueSerializer(new Jackson2JsonRedisSerializer<>(MyJsonDTO.class));
		
		MyJsonDTO pDTO = null;
		
		if(redisDB.hasKey(redisKey)) {
			
			// Redis�� ����� ������ ��ü ��������
			// ������ �ε����� 0���� �����ϸ�, ����° ���ڰ��� -1�� �����ϸ� ��� ������
			List<MyJsonDTO> pList = (List)redisDB.opsForList().range(redisKey, 0, -1);
			
			Iterator<MyJsonDTO> it = pList.iterator();
			
			while (it.hasNext()) {
				MyJsonDTO rDTO = (MyJsonDTO)it.next();
				
				if(rDTO == null) {
					rDTO = new MyJsonDTO();
				}
				
				log.info("name : " + CmmUtil.nvl(rDTO.getName()));
				log.info("email : " + CmmUtil.nvl(rDTO.getEmail()));
				log.info("addr : " + CmmUtil.nvl(rDTO.getAddr()));
				
				
			}
		} else {
			
			pDTO = new MyJsonDTO();
			
			pDTO.setName("������");
			pDTO.setEmail("hglee67@kopo.ac.kr");
			pDTO.setAddr("����� ������");
			
			redisDB.opsForList().rightPush(redisKey, pDTO);
			
			pDTO = null;
			
			pDTO = new MyJsonDTO();
			
			pDTO.setName("ȫ�浿");
			pDTO.setEmail("dkhong@kopo.ac.kr");
			pDTO.setAddr("����� ��õ��");
			
			redisDB.opsForList().rightPush(redisKey, pDTO);
			
			pDTO = null;
			
			// ����Ǵ� �������� ��ȿ�Ⱓ(TTL)�� 100������ ����
			redisDB.expire(redisKey, 100, TimeUnit.MINUTES);
			
			log.info("Save Data!!");
			
			
			
		}
	}

	/**
	 * HashTable ����
	 */
	@Override
	public void doSaveDataforHashTable() throws Exception {
		
		// �α����
		log.info(this.getClass().getName() + ".doSaveDataforHashTable start!");
		
		String redisKey = "Test03-HashTable";
		
		redisDB.setKeySerializer(new StringRedisSerializer());
		redisDB.setValueSerializer(new StringRedisSerializer());
		
		if(redisDB.hasKey(redisKey)) {
			
			String name = CmmUtil.nvl((String)redisDB.opsForHash().get(redisKey, "name"));
			String email = CmmUtil.nvl((String)redisDB.opsForHash().get(redisKey, "email"));
			String addr = CmmUtil.nvl((String)redisDB.opsForHash().get(redisKey, "addr"));
			
			log.info("name : " + name);
			log.info("email : " + email);
			log.info("addr : " + addr);
			
		}else {
			
			redisDB.opsForHash().put(redisKey, "name", "������");
			redisDB.opsForHash().put(redisKey, "email", "hglee67@kopo.ac.kr");
			redisDB.opsForHash().put(redisKey, "addr", "���Q�� ��õ��");
			
			// ����Ǵ� �������� ��ȿ�Ⱓ(TTL)�� 100������ ����
			redisDB.expire(redisKey, 100, TimeUnit.MINUTES);
			
			log.info("Save Data!!");
			
		}
		
	}

	
	@Override
	public void doSaveDataforSet() throws Exception {
		// �α����
		log.info(this.getClass().getName() + ".doSaveDataforSet start!");
		
		String redisKey = "Test03-Set";
		
		/*
		 * redis ���� �� �б⿡ ���� ������ Ÿ�� ����(String Ÿ������ ������)
		 */
		redisDB.setKeySerializer(new StringRedisSerializer());
		redisDB.setValueSerializer(new StringRedisSerializer());
		
		if(redisDB.hasKey(redisKey)) {
			
			Set rSet = (Set)redisDB.opsForSet().members(redisKey);
			
			Iterator<String> it = rSet.iterator();
			
			while(it.hasNext()) {
				String value = CmmUtil.nvl((String)it.next());
				
				log.info("value : " + value);
			}
			
			
		}else {
			
			redisDB.opsForSet().add(redisKey, "1��° �����մϴ�.");
			redisDB.opsForSet().add(redisKey, "2��° �����մϴ�.");
			redisDB.opsForSet().add(redisKey, "3��° �����մϴ�.");
			redisDB.opsForSet().add(redisKey, "4��° �����մϴ�.");
			
			redisDB.expire(redisKey, 100, TimeUnit.MINUTES);
			
			log.info("Save Data!!");
		}
		
	}

	
	@Override
	public void doSaveDataforZSet() throws Exception {
		
		log.info(this.getClass().getName() + ".doSaveDataforZSet start!");
		
		String redisKey = "Test04-ZSet";
		
		/*
		 * redis ���� �� �б⿡ ���� ������ Ÿ�� ����(String Ÿ������ ������)
		 */
		redisDB.setKeySerializer(new StringRedisSerializer());
		redisDB.setValueSerializer(new StringRedisSerializer());
		
		if(redisDB.hasKey(redisKey)) {
			
			// ����� ��ü ���ڵ� ��
			long cnt = redisDB.opsForZSet().size(redisKey);
			
			Set rSet = (Set)redisDB.opsForZSet().range(redisKey, 0, cnt);
			
			if(rSet == null) {
				rSet = new LinkedHashSet<String>();
			}
			
			Iterator<String> it = rSet.iterator();
			
			if(it.hasNext()) {
				String value = CmmUtil.nvl((String)it.next());
				
				log.info("value : " + value);
			}
		} else {
			
			// 3��° �Ķ���ʹ� ���� ���� ����ġ�̸�, �������� �տ� �����
			redisDB.opsForZSet().add(redisKey, "1���� �����մϴ�.", 1);
			redisDB.opsForZSet().add(redisKey, "2���� �����մϴ�.", 2);
			redisDB.opsForZSet().add(redisKey, "3���� �����մϴ�.", 3);
			redisDB.opsForZSet().add(redisKey, "4���� ����������, 2��° ��ġ�� ���� �ʹ�.", 1.1);
			
			redisDB.expire(redisKey, 100, TimeUnit.MINUTES);
			
			log.info("Save Data!!");
			
		}
		
	}
	
	
}
