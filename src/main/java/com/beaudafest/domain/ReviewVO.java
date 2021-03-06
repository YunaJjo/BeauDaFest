package com.beaudafest.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ReviewVO {
	private Integer reviewNum;
	private String memberId;
	private String memberName;
	private Integer shopNum;
	private String shopName;
	private Integer reviewScore;
	private String reviewComment;
	private Integer reviewDepth;
	private Integer reviewGroup;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "Asia/Seoul")
	private Date reviewDate;
	private Date rsvnDate;
	private String designName;
	
	public ReviewVO() {
		// TODO Auto-generated constructor stub
	}
	
	public ReviewVO(Integer reviewNum, String memberId, String memberName, Integer shopNum, Integer reviewScore, String reviewComment,
			Integer reviewDepth, Integer reviewGroup, Date reviewDate, Date rsvnDate, String designName, String shopName) {
		super();
		this.reviewNum = reviewNum;
		this.memberId = memberId;
		this.memberName = memberName;
		this.shopNum = shopNum;
		this.reviewScore = reviewScore;
		this.reviewComment = reviewComment;
		this.reviewDepth = reviewDepth;
		this.reviewGroup = reviewGroup;
		this.reviewDate = reviewDate;
		this.rsvnDate = rsvnDate;
		this.designName = designName;
		this.shopName = shopName;
	}
	
	public Integer getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(Integer reviewNum) {
		this.reviewNum = reviewNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Integer getShopNum() {
		return shopNum;
	}
	public void setShopNum(Integer shopNum) {
		this.shopNum = shopNum;
	}
	public Integer getReviewScore() {
		return reviewScore;
	}
	public void setReviewScore(Integer reviewScore) {
		this.reviewScore = reviewScore;
	}
	public String getReviewComment() {
		return reviewComment;
	}
	public void setReviewComment(String reviewComment) {
		this.reviewComment = reviewComment;
	}
	public Integer getReviewDepth() {
		return reviewDepth;
	}
	public void setReviewDepth(Integer reviewDepth) {
		this.reviewDepth = reviewDepth;
	}
	public Integer getReviewGroup() {
		return reviewGroup;
	}
	public void setReviewGroup(Integer reviewGroup) {
		this.reviewGroup = reviewGroup;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public Date getRsvnDate() {
		return rsvnDate;
	}
	public void setRsvnDate(Date rsvnDate) {
		this.rsvnDate = rsvnDate;
	}
	public String getDesignName() {
		return designName;
	}
	public void setDesignName(String designName) {
		this.designName = designName;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	@Override
	public String toString() {
		return "ReviewVO [reviewNum=" + reviewNum + ", memberId=" + memberId + ", memberName=" + memberName
				+ ", shopNum=" + shopNum + ", shopName=" + shopName + ", reviewScore=" + reviewScore
				+ ", reviewComment=" + reviewComment + ", reviewDepth=" + reviewDepth + ", reviewGroup=" + reviewGroup
				+ ", reviewDate=" + reviewDate + ", rsvnDate=" + rsvnDate + ", designName=" + designName + "]";
	}

}
