package cn.edu.wic.spring01.test;

import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import cn.edu.wic.spring01.bean.American;
import cn.edu.wic.spring01.bean.Chinese;

public class PersonTest {

	@Test
	public void testChinese() {
		// start Spring container
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"applicationContext.xml");

		// getBean where id is chinese
		Chinese chinese = (Chinese) context.getBean("chinese");
		chinese.say();
	}

	@Test
	public void testAmerican() {
		// start Spring container
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"applicationContext.xml");

		// getBean where id is american
		American american = (American) context.getBean("american");
		american.say();
	}

	public void beanFactory() {
		Resource resource = new ClassPathResource("applicationContext.xml");
		BeanFactory factory = new XmlBeanFactory(resource);
	}
}