package cn.edu.wic.spring02.test;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import cn.edu.wic.spring02.bean.Classroom;
import cn.edu.wic.spring02.bean.Student;
import cn.edu.wic.spring02.bean.Teacher;

public class MyTest {

	@Test
	public void teacher() {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		Teacher teacher = (Teacher) context.getBean("teacher");
		System.out.println(teacher);
	}

	@Test
	public void teacher1() {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		Teacher teacher = (Teacher) context.getBean("teacher1");
		System.out.println(teacher);
	}
	
	@Test
	public void student() {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		Student student = context.getBean(Student.class);
		System.out.println(student);
	}
	
	@Test
	public void classroom() {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		Classroom classroom = context.getBean(Classroom.class);
		System.out.println(classroom);
	}
}