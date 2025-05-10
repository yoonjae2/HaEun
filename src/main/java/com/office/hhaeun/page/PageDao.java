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

    // ���� ��� ����¡ ó��
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
    
    // �������� ���� ã�� (���� ���� ����� ��ȯ�� �� �ֵ��� List�� ����)
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
    
    // ���� ���� �޼���
    public void insertReview(PageVo vo) {
        String sql = "INSERT INTO reviews (title, author, content, date) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, vo.getTitle(), vo.getAuthor(), vo.getContent(), vo.getDate());
    }

    // ��ü ���� ���� ��������
    public int getTotalReviewCount() {
        String sql = "SELECT COUNT(*) FROM reviews";
        return jdbcTemplate.queryForObject(sql, Integer.class); // ��ü ���� ���� ��ȯ
    }
    public void deleteReview(int reviewId) {
        String sql = "DELETE FROM reviews WHERE id = ?";
        jdbcTemplate.update(sql, reviewId);
    }
}
