package com.mfkara.shoppingcartbackend.service;

import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.mfkara.shoppingcartbackend.model.PriceNews;
import com.mfkara.shoppingcartbackend.model.Product;
import com.mfkara.shoppingcartbackend.repository.PriceNewsRepository;

@Service
public class PriceNewsServiceImpl implements PriceNewsService {

	@Autowired
	PriceNewsRepository priceNewsRepository;
	@Autowired
	private JavaMailSender sender;

	@Override
	public PriceNews getOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PriceNews> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addPriceNews(PriceNews priceNews) {
		priceNewsRepository.save(priceNews);
	}

	@Override
	public void notifyDiscount(Product product) throws Exception {
		String emailBody = "<a href='localhost:1453/" + product.getProductId() + "'>" + product.getProductName()
				+ " Discount" + "</a>";
		for (PriceNews PN : priceNewsRepository.findByProduct(product)) {

			sendEmail(PN.getEmail(), emailBody);
		}
	}

	private void sendEmail(String email, String emailBody) throws Exception {
		MimeMessage message = sender.createMimeMessage();

		// Enable the multipart flag!
		MimeMessageHelper helper = new MimeMessageHelper(message, true);

		helper.setTo(email);
		helper.setText(emailBody);
		helper.setSubject("BIG DISCOUNT");

		sender.send(message);
	}
}
