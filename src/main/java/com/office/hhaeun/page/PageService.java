package com.office.hhaeun.page;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PageService {

    @Autowired
    private PageDao pageDao;

    public void writeReview(PageVo vo) {
        pageDao.insertReview(vo); // ¸®ºä Ãß°¡
    }

    public List<PageVo> getReviewsByPage(int page, int pageSize) {
        return pageDao.getReviewsByPage(page, pageSize); // ÆäÀÌÂ¡µÈ ¸®ºä ¸ñ·Ï ¹ÝÈ¯
    }

    public int getTotalReviewCount() {
        return pageDao.getTotalReviewCount(); // ÃÑ ¸®ºä ¼ö ¹ÝÈ¯
    }

    public List<PageVo> getReviewByTitle(String title) {
        return pageDao.findByTitle(title); // Á¦¸ñÀ¸·Î ¸®ºäµé Ã£±â
    }
    
    public void deleteReviewById(int reviewId) {
        pageDao.deleteReview(reviewId);
    }

}
