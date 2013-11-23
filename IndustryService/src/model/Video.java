/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package model;

import java.util.Date;

public class Video {
	private int videoid;
	private String videoname;
	private Date createtime;
	private String describe;
	private String link;
	private String link2;
	private int authorid;
	private int ispass;
	private int opentimes;
	private int videotype;
	private double videosize;
	/**
	 * @return the videoid
	 */
	public int getVideoid() {
		return videoid;
	}
	/**
	 * @param videoid the videoid to set
	 */
	public void setVideoid(int videoid) {
		this.videoid = videoid;
	}
	/**
	 * @return the videoname
	 */
	public String getVideoname() {
		return videoname;
	}
	/**
	 * @param videoname the videoname to set
	 */
	public void setVideoname(String videoname) {
		this.videoname = videoname;
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
	 * @return the opentimes
	 */
	public int getOpentimes() {
		return opentimes;
	}
	/**
	 * @param opentimes the opentimes to set
	 */
	public void setOpentimes(int opentimes) {
		this.opentimes = opentimes;
	}
	/**
	 * @return the videotype
	 */
	public int getVideotype() {
		return videotype;
	}
	/**
	 * @param videotype the videotype to set
	 */
	public void setVideotype(int videotype) {
		this.videotype = videotype;
	}
	/**
	 * @return the link2
	 */
	public String getLink2() {
		return link2;
	}
	/**
	 * @param link2 the link2 to set
	 */
	public void setLink2(String link2) {
		this.link2 = link2;
	}
	/**
	 * @return the videosize
	 */
	public double getVideosize() {
		return videosize;
	}
	/**
	 * @param videosize the videosize to set
	 */
	public void setVideosize(double videosize) {
		this.videosize = videosize;
	}
}
