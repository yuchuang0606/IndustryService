/**
 * @authored by zhouyunbin
 * @create date 2013-11-14
 */
package model;

import java.util.Date;

public class Video {
	private int videoid;
	private String title;
	private Date createtime;
	private String sdescribe;
	private String link;
	private String link2;
	private int authorid;
	private int ispass;
	private int viewtimes;
	private int videotype;
	private double videosize;
	private int downloadtimes;
	private String tag;
	private String filename;
	private String videopic;
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
	 * @return the opentimes
	 */
	public int getViewtimes() {
		return viewtimes;
	}
	/**
	 * @param opentimes the opentimes to set
	 */
	public void setViewtimes(int viewtimes) {
		this.viewtimes = viewtimes;
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
	 * @return the tag
	 */
	public String getTag() {
		return tag;
	}
	/**
	 * @param tag the tag to set
	 */
	public void setTag(String tag) {
		this.tag = tag;
	}
	/**
	 * @return the filename
	 */
	public String getFilename() {
		return filename;
	}
	/**
	 * @param filename the filename to set
	 */
	public void setFilename(String filename) {
		this.filename = filename;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the videopic
	 */
	public String getVideopic() {
		return videopic;
	}
	/**
	 * @param videopic the videopic to set
	 */
	public void setVideopic(String videopic) {
		this.videopic = videopic;
	}
	/**
	 * @return the sdescribe
	 */
	public String getSdescribe() {
		return sdescribe;
	}
	/**
	 * @param sdescribe the sdescribe to set
	 */
	public void setSdescribe(String sdescribe) {
		this.sdescribe = sdescribe;
	}
}
