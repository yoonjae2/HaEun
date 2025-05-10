package com.office.hhaeun.page;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PageService {

    @Autowired
    private PageDao pageDao;

    public void writeReview(PageVo vo) {
        pageDao.insertReview(vo); // ���� �߰�
    }

    public List<PageVo> getReviewsByPage(int page, int pageSize) {
        return pageDao.getReviewsByPage(page, pageSize); // ����¡�� ���� ��� ��ȯ
    }

    public int getTotalReviewCount() {
        return pageDao.getTotalReviewCount(); // �� ���� �� ��ȯ
    }

    public List<PageVo> getReviewByTitle(String title) {
        return pageDao.findByTitle(title); // �������� ����� ã��
    }
    
    public void deleteReviewById(int reviewId) {
        pageDao.deleteReview(reviewId);
    }

}
