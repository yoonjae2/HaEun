package com.office.hhaeun.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class PageDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // 리뷰 목록 페이징 처리
    public List<PageVo> getReviewsByPage(int page, int pageSize) {
        int offset = (page - 1) * pageSize;
        String sql = "SELECT * FROM reviews ORDER BY date DESC LIMIT ? OFFSET ?";

        return jdbcTemplate.query(sql, new Object[]{pageSize, offset}, new RowMapper<PageVo>() {
            @Override
            public PageVo mapRow(ResultSet rs, int rowNum) throws SQLException {
                PageVo vo = new PageVo();
                vo.setId(rs.getInt("id"));
                vo.setTitle(rs.getString("title"));
                vo.setAuthor(rs.getString("author"));
                vo.setContent(rs.getString("content"));
                vo.setDate(rs.getTimestamp("date"));
                return vo;
            }
        });
    }
    
    // 제목으로 리뷰 찾기 (여러 개의 결과를 반환할 수 있도록 List로 수정)
    public List<PageVo> findByTitle(String title) {
        String sql = "SELECT * FROM reviews WHERE title = ?";
        return jdbcTemplate.query(sql, new Object[]{title}, new RowMapper<PageVo>() {
            @Override
            public PageVo mapRow(ResultSet rs, int rowNum) throws SQLException {
                PageVo vo = new PageVo();
                vo.setId(rs.getInt("id"));
                vo.setTitle(rs.getString("title"));
                vo.setAuthor(rs.getString("author"));
                vo.setContent(rs.getString("content"));
                vo.setDate(rs.getTimestamp("date"));
                return vo;
            }
        });
    }
    
    // 리뷰 삽입 메서드
    public void insertReview(PageVo vo) {
        String sql = "INSERT INTO reviews (title, author, content, date) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, vo.getTitle(), vo.getAuthor(), vo.getContent(), vo.getDate());
    }

    // 전체 리뷰 개수 가져오기
    public int getTotalReviewCount() {
        String sql = "SELECT COUNT(*) FROM reviews";
        return jdbcTemplate.queryForObject(sql, Integer.class); // 전체 리뷰 개수 반환
    }
    public void deleteReview(int reviewId) {
        String sql = "DELETE FROM reviews WHERE id = ?";
        jdbcTemplate.update(sql, reviewId);
    }
}
