package com.sample.business.model;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class UserTest {
	private User target;

	@Before
	public void setup() {
		target = new User();
	}

	@After
	public void tearDown() {
		//
	}

	@Test
	public void testToString() throws Exception {
		target.setId("0001");
		target.setName("hagi");
		target.setAge(40);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		Date update = sdf.parse("2013/03/10");
		target.setUpDate(update);

		assertEquals("User [id=0001, name=hagi, age=40, upDate=Sun Mar 10 00:00:00 JST 2013]",
				target.toString());
	}

}
