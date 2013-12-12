/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package model;

public class Configuration {
	private int configid;
	private String config_name;
	private String config_path;
	private String description;
	private String property;
	/**
	 * @return the configid
	 */
	public int getConfigid() {
		return configid;
	}
	/**
	 * @param configid the configid to set
	 */
	public void setConfigid(int configid) {
		this.configid = configid;
	}
	/**
	 * @return the config_name
	 */
	public String getConfig_name() {
		return config_name;
	}
	/**
	 * @param config_name the config_name to set
	 */
	public void setConfig_name(String config_name) {
		this.config_name = config_name;
	}
	/**
	 * @return the config_path
	 */
	public String getConfig_path() {
		return config_path;
	}
	/**
	 * @param config_path the config_path to set
	 */
	public void setConfig_path(String config_path) {
		this.config_path = config_path;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	 * @return the property
	 */
	public String getProperty() {
		return property;
	}
	/**
	 * @param property the property to set
	 */
	public void setProperty(String property) {
		this.property = property;
	}
}
