package cn.edu.wic.supervision.service.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ZipExample {

	public static void main(String[] args) throws IOException {
		InputStream in = null;
		ZipOutputStream out = null;
		
		try {
			out = new ZipOutputStream(new FileOutputStream("d:\\My_File.zip"));
			for (File i : new File("d:\\image").listFiles()) {
				if (i.isDirectory())
					continue;
				out.putNextEntry(new ZipEntry("Test_File" + File.separator + i.getName()));
				in = new FileInputStream(i);
				byte[] bytes = new byte[2048];
				int len = 0;
				while ((len = in.read(bytes)) != -1)
					out.write(bytes, 0, len);
				in.close();
				in = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (in != null)
				in.close();
			if (out != null)
				out.close();
		}
	}
}