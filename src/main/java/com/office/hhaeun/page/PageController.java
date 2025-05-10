package com.office.hhaeun.page;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PageController {
	
	@Autowired
	private PageService pageService;
	
	 @RequestMapping("/")
	    public String home() {
	        return "index";  // /WEB-INF/views/index.jsp
	    }

	
	@GetMapping(value = "/HM")
	public String HM(){
		String nextpage = "/HM";
		
		return nextpage;
	}
	
	@GetMapping("/CC")
	public String showReviewList(@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
	    int pageSize = 5; // 페이지당 리뷰 수
	    int totalReviews = pageService.getTotalReviewCount(); // 전체 리뷰 개수
	    int totalPages = (int) Math.ceil((double) totalReviews / pageSize); // 전체 페이지 수 계산

	    List<PageVo> reviews = pageService.getReviewsByPage(page, pageSize); // 해당 페이지의 리뷰 목록

	    model.addAttribute("reviews", reviews);  // 리뷰 목록
	    model.addAttribute("currentPage", page); // 현재 페이지 번호
	    model.addAttribute("totalPages", totalPages); // 전체 페이지 수

	    return "CC";  // CC.jsp 반환
	}

	
	@GetMapping(value = "/OF")
	public String OF() {
		String nextpage = "/OF";
		return nextpage;
	}
	
	@GetMapping(value = "/qus")
	public String qus() {
		String nextpage = "/qus";
		return nextpage;
	}
	
	 // 리뷰 상세 페이지
	@GetMapping("/view")
	public String showReviewDetail(@RequestParam("title") String title, Model model) {
	    System.out.println("Requested review title: " + title);

	    if (title == null || title.isEmpty()) {
	        System.out.println("Title is null or empty");
	        return "redirect:/hhaeun/cc";
	    }

	    List<PageVo> reviewList = pageService.getReviewByTitle(title);

	    if (!reviewList.isEmpty()) {
	        PageVo review = reviewList.get(0); // 같은 제목이 있을 수 있으니 첫 번째 것만 사용
	        model.addAttribute("review", review);
	        return "view"; // view.jsp
	    } else {
	        return "redirect:/hhaeun/cc"; // 없으면 목록으로
	    }
	}

	  @PostMapping("/deleteReview.do")
	    public String deleteReview(@RequestParam("reviewId") int reviewId) {
	        pageService.deleteReviewById(reviewId);
	        return "redirect:/CC"; // 목록으로 리디렉션
	    }

	
	 // 리뷰 작성 페이지
    @GetMapping("/write")
    public String showWritePage() {
        return "write";  // write.jsp 반환
    }
    
    @PostMapping("/writeConfirm")
    public String writeConfirm(@ModelAttribute PageVo vo) {
        // 현재 시간 설정
        vo.setDate(new Date());

        // DB에 저장
        pageService.writeReview(vo);

        // 작성 후 목록 페이지로 리디렉트
        return "redirect:/CC";
    }

	
	@GetMapping(value = "/company")
	public String company() {
		String nextpage = "/company";
		return nextpage;
	}
}
