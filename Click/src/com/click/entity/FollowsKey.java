package com.click.entity;

public class FollowsKey {
    private String star;

    private String fans;

    public String getStar() {
        return star;
    }

    public void setStar(String star) {
        this.star = star == null ? null : star.trim();
    }

    public String getFans() {
        return fans;
    }

    public void setFans(String fans) {
        this.fans = fans == null ? null : fans.trim();
    }
}