package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.CategoryMapper;
import mapper.ReviewMapper;
import po.Category;
import po.Review;
import util.MybatisUtil;

public class ReviewService {
	
	public static Review getReviewByPid(String pid) {
		SqlSession  sq = MybatisUtil.openSession();
		ReviewMapper cm = sq.getMapper(ReviewMapper.class);
		
		Review l = cm.getReviewByPid(pid);
		return l;
		
	}
	
	public static List<Review> getAllReview() {
		SqlSession  sq = MybatisUtil.openSession();
		ReviewMapper cm = sq.getMapper(ReviewMapper.class);
		
		List<Review> l = cm.getAllReview();
		return l;
		
	}
}
