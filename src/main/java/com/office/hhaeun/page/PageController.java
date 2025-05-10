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
	    int pageSize = 5; // �������� ���� ��
	    int totalReviews = pageService.getTotalReviewCount(); // ��ü ���� ����
	    int totalPages = (int) Math.ceil((double) totalReviews / pageSize); // ��ü ������ �� ���

	    List<PageVo> reviews = pageService.getReviewsByPage(page, pageSize); // �ش� �������� ���� ���

	    model.addAttribute("reviews", reviews);  // ���� ���
	    model.addAttribute("currentPage", page); // ���� ������ ��ȣ
	    model.addAttribute("totalPages", totalPages); // ��ü ������ ��

	    return "CC";  // CC.jsp ��ȯ
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
	
	 // ���� �� ������
	@GetMapping("/view")
	public String showReviewDetail(@RequestParam("title") String title, Model model) {
	    System.out.println("Requested review title: " + title);

	    if (title == null || title.isEmpty()) {
	        System.out.println("Title is null or empty");
	        return "redirect:/hhaeun/cc";
	    }

	    List<PageVo> reviewList = pageService.getReviewByTitle(title);

	    if (!reviewList.isEmpty()) {
	        PageVo review = reviewList.get(0); // ���� ������ ���� �� ������ ù ��° �͸� ���
	        model.addAttribute("review", review);
	        return "view"; // view.jsp
	    } else {
	        return "redirect:/hhaeun/cc"; // ������ �������
	    }
	}

	  @PostMapping("/deleteReview.do")
	    public String deleteReview(@RequestParam("reviewId") int reviewId) {
	        pageService.deleteReviewById(reviewId);
	        return "redirect:/CC"; // ������� ���𷺼�
	    }

	
	 // ���� �ۼ� ������
    @GetMapping("/write")
    public String showWritePage() {
        return "write";  // write.jsp ��ȯ
    }
    
    @PostMapping("/writeConfirm")
    public String writeConfirm(@ModelAttribute PageVo vo) {
        // ���� �ð� ����
        vo.setDate(new Date());

        // DB�� ����
        pageService.writeReview(vo);

        // �ۼ� �� ��� �������� ����Ʈ
        return "redirect:/CC";
    }

	
	@GetMapping(value = "/company")
	public String company() {
		String nextpage = "/company";
		return nextpage;
	}
}
