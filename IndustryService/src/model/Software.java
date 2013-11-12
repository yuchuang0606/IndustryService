package model;

import java.util.Date;

public class Software {
	private int softwareid;
	private String describe;
	private Date createtime;
	private String link;
	private int authorid;
	private int ispass;
	private int downloadtimes;
	private String version;
	/**
	 * @return the softwareid
	 */
	public int getSoftwareid() {
		return softwareid;
	}
	/**
	 * @param softwareid the softwareid to set
	 */
	public void setSoftwareid(int softwareid) {
		this.softwareid = softwareid;
	}
	/**
	 * @return the describe
	 */
	public String getDescribe() {
		return describe;
	}
	/**
	 * @param describe the describe to set
	 */
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	/**
	 * @return the createtime
	 */
	public Date getCreatetime() {
		return createtime;
	}
	/**
	 * @param createtime the createtime to set
	 */
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	/**
	 * @return the link
	 */
	public String getLink() {
		return link;
	}
	/**
	 * @param link the link to set
	 */
	public void setLink(String link) {
		this.link = link;
	}
	/**
	 * @return the authorid
	 */
	public int getAuthorid() {
		return authorid;
	}
	/**
	 * @param authorid the authorid to set
	 */
	public void setAuthorid(int authorid) {
		this.authorid = authorid;
	}
	/**
	 * @return the ispass
	 */
	public int getIspass() {
		return ispass;
	}
	/**
	 * @param ispass the ispass to set
	 */
	public void setIspass(int ispass) {
		this.ispass = ispass;
	}
	/**
	 * @return the downloadtimes
	 */
	public int getDownloadtimes() {
		return downloadtimes;
	}
	/**
	 * @param downloadtimes the downloadtimes to set
	 */
	public void setDownloadtimes(int downloadtimes) {
		this.downloadtimes = downloadtimes;
	}
	/**
	 * @return the version
	 */
	public String getVersion() {
		return version;
	}
	/**
	 * @param version the version to set
	 */
	public void setVersion(String version) {
		this.version = version;
	}

}
