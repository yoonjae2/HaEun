package com.office.hhaeun.page;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PageService {

    @Autowired
    private PageDao pageDao;

    public void writeReview(PageVo vo) {
        pageDao.insertReview(vo); // 리뷰 추가
    }

    public List<PageVo> getReviewsByPage(int page, int pageSize) {
        return pageDao.getReviewsByPage(page, pageSize); // 페이징된 리뷰 목록 반환
    }

    public int getTotalReviewCount() {
        return pageDao.getTotalReviewCount(); // 총 리뷰 수 반환
    }

    public List<PageVo> getReviewByTitle(String title) {
        return pageDao.findByTitle(title); // 제목으로 리뷰들 찾기
    }
    
    public void deleteReviewById(int reviewId) {
        pageDao.deleteReview(reviewId);
    }

    public PageVo getReviewById(int reviewId) {
        return pageDao.getReviewById(reviewId);
    }




}