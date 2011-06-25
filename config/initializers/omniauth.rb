#APP_ID, APP_SECRET
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook , '109969585764747', '595d25190451d00d0ff89829a9bbc7a3', :iframe => true, 
      :scope => 'email, user_about_me,user_activities,user_birthday,user_education_history,
                      user_events,user_groups,user_hometown,user_interests,user_likes, user_location,
                      user_religion_politics,
                      user_status,user_work_history,
                      publish_stream, offline_access,
                      friends_about_me,
                      friends_activities,friends_birthday,friends_education_history,friends_events,
                      friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,
                      friends_photo_video_tags,friends_photos,friends_relationships,
                      friends_relationship_details,friends_religion_politics,friends_status,
                      friends_work_history' 
                      
                      # user_relationships, user_relationship_details,
                      # user_photo_video_tags,user_photos,
                      # publish_checkins,manage_pages,
                      # create_event,rsvp_event,sms,read_friendlists,read_insights,read_mailbox,
                      # read_requests,read_stream,xmpp_login,ads_management,
                      # user_checkins,user_videos,user_website, user_notes,user_online_presence,user_address,user_mobile_phone
                      # friends_notes,friends_online_presence, friends_videos,friends_website, manage_friendlists,friends_checkins
                      
                      #Adding, :iframe => true allows a Facebook App to redirect out of Facebook for authentication
end