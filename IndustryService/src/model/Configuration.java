/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package model;

public class Configuration {
	private int configid;
	private String config_name;
	private String config_path;
	private String condition;
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
	 * @return the condition
	 */
	public String getCondition() {
		return condition;
	}
	/**
	 * @param condition the condition to set
	 */
	public void setCondition(String condition) {
		this.condition = condition;
	}
}
