package com.jobdongsan.project.config.oauth.provider;

import java.util.Map;

public class KakaoUserInfo implements OAuth2UserInfo {
	private Map<String, Object> attributes;
	private Map<String, Object> attributesAccount;
	private Map<String, Object> attributesProfile;
	
    public KakaoUserInfo(Map<String, Object> attributes) {
        this.attributes = attributes;
        this.attributesAccount = (Map<String, Object>) attributes.get("kakao_account");
        this.attributesProfile = (Map<String, Object>) attributesAccount.get("profile");
    }
    
    @Override
    public String getProviderId() {
        return attributes.get("id").toString();
    }

    @Override
    public String getName() {
        return (String) attributesProfile.get("nickname");
    }

    @Override
    public String getEmail() {
        return (String) attributesAccount.get("email");
    }

	@Override
	public String getProvider() {
		return "kakao";
	}

	@Override
	public String getImageUrl() {
		return (String) attributesProfile.get("profile_image_url");
	}
}
