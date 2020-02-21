package com.crm.vobj;

public class PageInfo {
	@Override
	public String toString() {
		return "PageInfo [recordCount=" + recordCount + ", pageSize="
				+ pageSize + ", pageCount=" + pageCount + ", pageIndex="
				+ pageIndex + "]";
	}

	private int recordCount,pageSize,pageCount,pageIndex;
	public PageInfo(int pageSize,int pageIndex){
		this.pageSize=pageSize;
		this.pageIndex=pageIndex-1;
	}
	public int getStartRow(){
		return pageSize*pageIndex;
	}
	public void computePageCount(){
		//计算总页数
		pageCount=recordCount/pageSize;
		if(recordCount%pageSize!=0)
			pageCount++;
		//校正当前页码		
		if(pageIndex>pageCount-1) pageIndex=pageCount-1;
		if(pageIndex<0) pageIndex=0;
	}
	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
}
