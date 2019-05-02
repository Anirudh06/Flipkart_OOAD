package zkart.jsp;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class AccessProperties {

	private String imageServerURL;
	private String serverPath;
	private String serverURL;
	private String contextPath;
	private String restPath;

	private final String CONFIG_FILE = "/home/anirudh/Desktop/ooad project/ooad project/ZKart-Frontend-master/src/main/java/zkart/jsp/config.properties";

	public String getContextPath() {
		return contextPath;
	}

	public void setContextPath(String contextPath) {
		this.contextPath = contextPath;
	}

	public String getRestPath() {
		return restPath;
	}

	public void setRestPath(String restPath) {
		this.restPath = restPath;
	}

	public String getImageServerURL() {
		return imageServerURL;
	}

	public void setImageServerURL(String imageServerURL) {
		this.imageServerURL = imageServerURL;
	}

	public String getServerURL() {
		return serverURL;
	}

	public void setServerURL(String serverURL) {
		this.serverURL = serverURL;
	}

	public String getServerPath() {
		return serverPath;
	}

	public void setServerPath(String serverPath) {
		this.serverPath = serverPath;
	}

	public AccessProperties() {

		Properties prop = new Properties();
		InputStream input = null;
		try {
			System.out.println(CONFIG_FILE);
			System.out.println("from access properties"+ prop.getProperty("imageServerURL"));
			input = new FileInputStream(CONFIG_FILE);
			prop.load(input);
			this.setServerURL(prop.getProperty("serverURL"));
			this.setImageServerURL(prop.getProperty("imageServerURL"));
			this.setServerPath(prop.getProperty("serverPath"));
		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

	}

}
