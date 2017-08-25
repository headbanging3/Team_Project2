
package com.acorn.shoopse.order.service;

import org.springframework.web.servlet.ModelAndView;

public interface OrderService {
	public ModelAndView list(int mem_num);
	public ModelAndView list();
	public ModelAndView getData(String id);
	public ModelAndView mgetData(String id);
}
