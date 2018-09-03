package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import po.Review;

public interface ReviewMapper {
	public Review getReviewByPid(@Param("pid") String pid);
	
	public List<Review> getAllReview();
}
