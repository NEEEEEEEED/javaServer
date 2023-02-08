package com.yedam.notice.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.notice.mapper.NoticeMapper;
import com.yedam.notice.vo.NoticeVO;

public class NoticeServiceImpl implements NoticeService{
	SqlSession session = DataSource.getInstance().openSession(true);
	NoticeMapper mapper = session.getMapper(NoticeMapper.class);
	
	@Override
	public List<NoticeVO> noticeList() {
		return mapper.selectList();
	}

	@Override
	public NoticeVO getNotice(int nid) {
		mapper.increaseCnt(nid); //카운트증가
		return mapper.searchOne(nid);
	}

	@Override
	public int addNotice(NoticeVO notice) {
		return mapper.insertNotice(notice);
	}

	@Override
	public int modNotice(NoticeVO notice) {
		return mapper.updateNotice(notice);
	}

	@Override
	public int remNotice(int nid) {
		return mapper.deleteNotice(nid);
	}

}