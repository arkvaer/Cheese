package com.click.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.click.entity.Photos;
import com.click.entity.User;
import com.click.mapper.PhotosMapper;
import com.click.service.PhotosService;


@Service("photoService")
public class PhotosServiceImpl implements PhotosService{

	@Resource
	private PhotosMapper photosMaper;
	
	@Override
	public int addPhoto(Photos photos) {
		int i = photosMaper.uploadPhoto(photos);
		System.out.println(i);
		return i;
	}

	@Override
	public List<Photos> findAllPhotosByUid(User user) {
		List<Photos> list = photosMaper.findAllPhotosByUid(user);
		return list;
	}

	@Override
	public List<Photos> findAllCarmemanPhotos() {
		List<Photos> list = photosMaper.findAllCarmemanPhotos();
		return list;
	}

	@Override
	public List<Photos> findAllCustomerPhotos() {
		List<Photos> photos = photosMaper.findAllCustomerPhotos();
		
		return photos;
	}

	@Override
	public int likes(Photos photos) {
		
		int i = photosMaper.likes(photos);
		System.out.println("修改状态为:" + i);
	
		return i;
	}

		
}
 