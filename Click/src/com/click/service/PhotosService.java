package com.click.service;

import java.util.List;

import com.click.entity.Photos;
import com.click.entity.User;

public interface PhotosService {
	public int addPhoto(Photos photos);
	
	public List<Photos> findAllPhotosByUid(User user);
	
	public List<Photos> findAllCarmemanPhotos();

	public List<Photos> findAllCustomerPhotos();
	
	int likes(Photos photos);
	
}
