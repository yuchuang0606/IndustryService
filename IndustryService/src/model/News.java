package model;

import java.util.Date;

public class News {
	private int newsid;
	private Date createtime;
	private Date modifytime;
	private int author;
	private String content;
	private int accesstime;
	private int ispass;
	private int newstype;
	/**
	 * @return the newsid
	 */
	public int getNewsid() {
		return newsid;
	}
	/**
	 * @param newsid the newsid to set
	 */
	public void setNewsid(int newsid) {
		this.newsid = newsid;
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
	 * @return the modifytime
	 */
	public Date getModifytime() {
		return modifytime;
	}
	/**
	 * @param modifytime the modifytime to set
	 */
	public void setModifytime(Date modifytime) {
		this.modifytime = modifytime;
	}
	/**
	 * @return the author
	 */
	public int getAuthor() {
		return author;
	}
	/**
	 * @param author the author to set
	 */
	public void setAuthor(int author) {
		this.author = author;
	}
	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}
	/**
	 * @return the accesstime
	 */
	public int getAccesstime() {
		return accesstime;
	}
	/**
	 * @param accesstime the accesstime to set
	 */
	public void setAccesstime(int accesstime) {
		this.accesstime = accesstime;
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
	 * @return the newstype
	 */
	public int getNewstype() {
		return newstype;
	}
	/**
	 * @param newstype the newstype to set
	 */
	public void setNewstype(int newstype) {
		this.newstype = newstype;
	}

}
