package com.click.mapper;

import java.util.List;

import com.click.entity.Photos;
import com.click.entity.User;

public interface PhotosMapper {
   
	public int uploadPhoto(Photos photos);
	
	public List<Photos> findAllPhotosByUid(User user);
	
	public List<Photos> findAllCarmemanPhotos();
	
	public List<Photos> findAllCustomerPhotos();
	
	public int likes(Photos photos);
}