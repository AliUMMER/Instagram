import 'dart:core';

class InstaMedia {
  String? status;
  Response? response;

  InstaMedia({this.status, this.response});

  InstaMedia.fromJson(Map<String, dynamic> json) {
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["response"] is Map) {
      response =
          json["response"] == null ? null : Response.fromJson(json["response"]);
    }
  }

  static List<InstaMedia> fromList(List<Map<String, dynamic>> list) {
    return list.map(InstaMedia.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    if (response != null) {
      _data["response"] = response?.toJson();
    }
    return _data;
  }
}

class Response {
  int? statusCode;
  String? contentType;
  Body? body;

  Response({this.statusCode, this.contentType, this.body});

  Response.fromJson(Map<String, dynamic> json) {
    if (json["status_code"] is int) {
      statusCode = json["status_code"];
    }
    if (json["content_type"] is String) {
      contentType = json["content_type"];
    }
    if (json["body"] is Map) {
      body = json["body"] == null ? null : Body.fromJson(json["body"]);
    }
  }

  static List<Response> fromList(List<Map<String, dynamic>> list) {
    return list.map(Response.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status_code"] = statusCode;
    _data["content_type"] = contentType;
    if (body != null) {
      _data["body"] = body?.toJson();
    }
    return _data;
  }
}

class Body {
  dynamic profileGridItems;
  dynamic profileGridItemsCursor;
  dynamic pinnedProfileGridItemsIds;
  dynamic specialEmptyState;
  int? numResults;
  bool? moreAvailable;
  List<Items>? items;
  String? nextMaxId;
  User4? user;
  bool? autoLoadMoreEnabled;
  String? status;

  Body(
      {this.profileGridItems,
      this.profileGridItemsCursor,
      this.pinnedProfileGridItemsIds,
      this.specialEmptyState,
      this.numResults,
      this.moreAvailable,
      this.items,
      this.nextMaxId,
      this.user,
      this.autoLoadMoreEnabled,
      this.status});

  Body.fromJson(Map<String, dynamic> json) {
    profileGridItems = json["profile_grid_items"];
    profileGridItemsCursor = json["profile_grid_items_cursor"];
    pinnedProfileGridItemsIds = json["pinned_profile_grid_items_ids"];
    specialEmptyState = json["special_empty_state"];
    if (json["num_results"] is int) {
      numResults = json["num_results"];
    }
    if (json["more_available"] is bool) {
      moreAvailable = json["more_available"];
    }
    if (json["items"] is List) {
      items = json["items"] == null
          ? null
          : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
    }
    if (json["next_max_id"] is String) {
      nextMaxId = json["next_max_id"];
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User4.fromJson(json["user"]);
    }
    if (json["auto_load_more_enabled"] is bool) {
      autoLoadMoreEnabled = json["auto_load_more_enabled"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
  }

  static List<Body> fromList(List<Map<String, dynamic>> list) {
    return list.map(Body.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["profile_grid_items"] = profileGridItems;
    _data["profile_grid_items_cursor"] = profileGridItemsCursor;
    _data["pinned_profile_grid_items_ids"] = pinnedProfileGridItemsIds;
    _data["special_empty_state"] = specialEmptyState;
    _data["num_results"] = numResults;
    _data["more_available"] = moreAvailable;
    if (items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    _data["next_max_id"] = nextMaxId;
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    _data["auto_load_more_enabled"] = autoLoadMoreEnabled;
    _data["status"] = status;
    return _data;
  }
}

class User4 {
  int? pk;
  String? pkId;
  String? username;
  String? fullName;
  bool? isPrivate;
  bool? isActiveOnTextPostApp;
  String? strongId;
  String? profileGridDisplayType;
  String? id;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;

  User4(
      {this.pk,
      this.pkId,
      this.username,
      this.fullName,
      this.isPrivate,
      this.isActiveOnTextPostApp,
      this.strongId,
      this.profileGridDisplayType,
      this.id,
      this.isVerified,
      this.profilePicId,
      this.profilePicUrl});

  User4.fromJson(Map<String, dynamic> json) {
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["pk_id"] is String) {
      pkId = json["pk_id"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if (json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if (json["is_active_on_text_post_app"] is bool) {
      isActiveOnTextPostApp = json["is_active_on_text_post_app"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["profile_grid_display_type"] is String) {
      profileGridDisplayType = json["profile_grid_display_type"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if (json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
  }

  static List<User4> fromList(List<Map<String, dynamic>> list) {
    return list.map(User4.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["username"] = username;
    _data["full_name"] = fullName;
    _data["is_private"] = isPrivate;
    _data["is_active_on_text_post_app"] = isActiveOnTextPostApp;
    _data["strong_id__"] = strongId;
    _data["profile_grid_display_type"] = profileGridDisplayType;
    _data["id"] = id;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    return _data;
  }
}

class Items {
  int? takenAt;
  int? pk;
  String? id;
  int? fbid;
  int? deviceTimestamp;
  bool? captionIsEdited;
  String? strongId;
  int? deletedReason;
  int? hasSharedToFb;
  bool? hasDelayedMetadata;
  String? mezqlToken;
  bool? shareCountDisabled;
  bool? isVisualReplyCommenterNoticeEnabled;
  bool? likeAndViewCountsDisabled;
  bool? isPostLiveClipsMedia;
  bool? canModifyCarousel;
  bool? isQuietPost;
  String? profileGridThumbnailFittingStyle;
  bool? commentThreadingEnabled;
  bool? isUnifiedVideo;
  String? commercialityStatus;
  String? clientCacheKey;
  String? integrityReviewDecision;
  bool? shouldRequestAds;
  bool? isReshareOfTextPostAppMediaInIg;
  bool? hasPrivatelyLiked;
  int? filterType;
  Usertags? usertags;
  bool? photoOfYou;
  bool? canSeeInsightsAsBrand;
  int? mediaType;
  String? code;
  Caption? caption;
  FundraiserTag? fundraiserTag;
  SharingFrictionInfo? sharingFrictionInfo;
  List<dynamic>? timelinePinnedUserIds;
  bool? hasViewsFetching;
  bool? originalMediaHasVisualReplyMedia;
  FbUserTags? fbUserTags;
  List<CoauthorProducers>? coauthorProducers;
  bool? coauthorProducerCanSeeOrganicInsights;
  List<dynamic>? invitedCoauthorProducers;
  bool? isInProfileGrid;
  bool? profileGridControlEnabled;
  User2? user;
  Owner? owner;
  ImageVersions2? imageVersions2;
  int? originalWidth;
  int? originalHeight;
  MediaNotes? mediaNotes;
  bool? enableMediaNotesProduction;
  String? productType;
  bool? isPaidPartnership;
  MusicMetadata? musicMetadata;
  List<dynamic>? socialContext;
  String? organicTrackingToken;
  bool? igMediaSharingDisabled;
  CrosspostMetadata? crosspostMetadata;
  dynamic boostUnavailableIdentifier;
  dynamic boostUnavailableReason;
  dynamic boostUnavailableReasonV2;
  bool? subscribeCtaVisible;
  bool? isCutoutStickerAllowed;
  GenAiDetectionMethod? genAiDetectionMethod;
  int? fbAggregatedLikeCount;
  int? fbAggregatedCommentCount;
  bool? hasHighRiskGenAiInformTreatment;
  CollabFollowButtonInfo? collabFollowButtonInfo;
  bool? openCarouselShowFollowButton;
  bool? isTaggedMediaSharedToViewerProfileGrid;
  bool? shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
  bool? isEligibleForMediaNoteRecsNux;
  bool? shouldOpenCollabBottomsheetOnFacepileTap;
  bool? isSocialUfiDisabled;
  bool? isEligibleForMetaAiShare;
  List<dynamic>? metaAiSuggestedPrompts;
  bool? canReply;
  bool? canViewMorePreviewComments;
  List<dynamic>? previewComments;
  int? commentCount;
  bool? hideViewAllCommentEntrypoint;
  String? inlineComposerDisplayCondition;
  int? inlineComposerImpTriggerTime;
  bool? isCommentsGifComposerEnabled;
  CommentInformTreatment? commentInformTreatment;
  bool? hasLiked;
  int? likeCount;
  List<dynamic>? topLikers;
  List<dynamic>? videoStickerLocales;
  List<dynamic>? clipsTabPinnedUserIds;
  bool? canViewerSave;
  bool? canViewerReshare;
  dynamic shopRoutingUserId;
  bool? isOrganicProductTaggingEligible;
  dynamic igbioProduct;
  List<dynamic>? featuredProducts;
  List<dynamic>? productSuggestions;
  String? commerceIntegrityReviewDecision;
  String? openCarouselSubmissionState;
  int? carouselMediaCount;
  List<CarouselMedia>? carouselMedia;
  int? carouselMediaPendingPostCount;
  bool? isReuseAllowed;
  bool? hasMoreComments;
  int? maxNumVisiblePreviewComments;
  bool? exploreHideComments;
  bool? isOpenToPublicSubmission;
  List<int>? carouselMediaIds;

  Items(
      {this.takenAt,
      this.pk,
      this.id,
      this.fbid,
      this.deviceTimestamp,
      this.captionIsEdited,
      this.strongId,
      this.deletedReason,
      this.hasSharedToFb,
      this.hasDelayedMetadata,
      this.mezqlToken,
      this.shareCountDisabled,
      this.isVisualReplyCommenterNoticeEnabled,
      this.likeAndViewCountsDisabled,
      this.isPostLiveClipsMedia,
      this.canModifyCarousel,
      this.isQuietPost,
      this.profileGridThumbnailFittingStyle,
      this.commentThreadingEnabled,
      this.isUnifiedVideo,
      this.commercialityStatus,
      this.clientCacheKey,
      this.integrityReviewDecision,
      this.shouldRequestAds,
      this.isReshareOfTextPostAppMediaInIg,
      this.hasPrivatelyLiked,
      this.filterType,
      this.usertags,
      this.photoOfYou,
      this.canSeeInsightsAsBrand,
      this.mediaType,
      this.code,
      this.caption,
      this.fundraiserTag,
      this.sharingFrictionInfo,
      this.timelinePinnedUserIds,
      this.hasViewsFetching,
      this.originalMediaHasVisualReplyMedia,
      this.fbUserTags,
      this.coauthorProducers,
      this.coauthorProducerCanSeeOrganicInsights,
      this.invitedCoauthorProducers,
      this.isInProfileGrid,
      this.profileGridControlEnabled,
      this.user,
      this.owner,
      this.imageVersions2,
      this.originalWidth,
      this.originalHeight,
      this.mediaNotes,
      this.enableMediaNotesProduction,
      this.productType,
      this.isPaidPartnership,
      this.musicMetadata,
      this.socialContext,
      this.organicTrackingToken,
      this.igMediaSharingDisabled,
      this.crosspostMetadata,
      this.boostUnavailableIdentifier,
      this.boostUnavailableReason,
      this.boostUnavailableReasonV2,
      this.subscribeCtaVisible,
      this.isCutoutStickerAllowed,
      this.genAiDetectionMethod,
      this.fbAggregatedLikeCount,
      this.fbAggregatedCommentCount,
      this.hasHighRiskGenAiInformTreatment,
      this.collabFollowButtonInfo,
      this.openCarouselShowFollowButton,
      this.isTaggedMediaSharedToViewerProfileGrid,
      this.shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
      this.isEligibleForMediaNoteRecsNux,
      this.shouldOpenCollabBottomsheetOnFacepileTap,
      this.isSocialUfiDisabled,
      this.isEligibleForMetaAiShare,
      this.metaAiSuggestedPrompts,
      this.canReply,
      this.canViewMorePreviewComments,
      this.previewComments,
      this.commentCount,
      this.hideViewAllCommentEntrypoint,
      this.inlineComposerDisplayCondition,
      this.inlineComposerImpTriggerTime,
      this.isCommentsGifComposerEnabled,
      this.commentInformTreatment,
      this.hasLiked,
      this.likeCount,
      this.topLikers,
      this.videoStickerLocales,
      this.clipsTabPinnedUserIds,
      this.canViewerSave,
      this.canViewerReshare,
      this.shopRoutingUserId,
      this.isOrganicProductTaggingEligible,
      this.igbioProduct,
      this.featuredProducts,
      this.productSuggestions,
      this.commerceIntegrityReviewDecision,
      this.openCarouselSubmissionState,
      this.carouselMediaCount,
      this.carouselMedia,
      this.carouselMediaPendingPostCount,
      this.isReuseAllowed,
      this.hasMoreComments,
      this.maxNumVisiblePreviewComments,
      this.exploreHideComments,
      this.isOpenToPublicSubmission,
      this.carouselMediaIds});

  Items.fromJson(Map<String, dynamic> json) {
    if (json["taken_at"] is int) {
      takenAt = json["taken_at"];
    }
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["fbid"] is int) {
      fbid = json["fbid"];
    }
    if (json["device_timestamp"] is int) {
      deviceTimestamp = json["device_timestamp"];
    }
    if (json["caption_is_edited"] is bool) {
      captionIsEdited = json["caption_is_edited"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["deleted_reason"] is int) {
      deletedReason = json["deleted_reason"];
    }
    if (json["has_shared_to_fb"] is int) {
      hasSharedToFb = json["has_shared_to_fb"];
    }
    if (json["has_delayed_metadata"] is bool) {
      hasDelayedMetadata = json["has_delayed_metadata"];
    }
    if (json["mezql_token"] is String) {
      mezqlToken = json["mezql_token"];
    }
    if (json["share_count_disabled"] is bool) {
      shareCountDisabled = json["share_count_disabled"];
    }
    if (json["is_visual_reply_commenter_notice_enabled"] is bool) {
      isVisualReplyCommenterNoticeEnabled =
          json["is_visual_reply_commenter_notice_enabled"];
    }
    if (json["like_and_view_counts_disabled"] is bool) {
      likeAndViewCountsDisabled = json["like_and_view_counts_disabled"];
    }
    if (json["is_post_live_clips_media"] is bool) {
      isPostLiveClipsMedia = json["is_post_live_clips_media"];
    }
    if (json["can_modify_carousel"] is bool) {
      canModifyCarousel = json["can_modify_carousel"];
    }
    if (json["is_quiet_post"] is bool) {
      isQuietPost = json["is_quiet_post"];
    }
    if (json["profile_grid_thumbnail_fitting_style"] is String) {
      profileGridThumbnailFittingStyle =
          json["profile_grid_thumbnail_fitting_style"];
    }
    if (json["comment_threading_enabled"] is bool) {
      commentThreadingEnabled = json["comment_threading_enabled"];
    }
    if (json["is_unified_video"] is bool) {
      isUnifiedVideo = json["is_unified_video"];
    }
    if (json["commerciality_status"] is String) {
      commercialityStatus = json["commerciality_status"];
    }
    if (json["client_cache_key"] is String) {
      clientCacheKey = json["client_cache_key"];
    }
    if (json["integrity_review_decision"] is String) {
      integrityReviewDecision = json["integrity_review_decision"];
    }
    if (json["should_request_ads"] is bool) {
      shouldRequestAds = json["should_request_ads"];
    }
    if (json["is_reshare_of_text_post_app_media_in_ig"] is bool) {
      isReshareOfTextPostAppMediaInIg =
          json["is_reshare_of_text_post_app_media_in_ig"];
    }
    if (json["has_privately_liked"] is bool) {
      hasPrivatelyLiked = json["has_privately_liked"];
    }
    if (json["filter_type"] is int) {
      filterType = json["filter_type"];
    }
    if (json["usertags"] is Map) {
      usertags =
          json["usertags"] == null ? null : Usertags.fromJson(json["usertags"]);
    }
    if (json["photo_of_you"] is bool) {
      photoOfYou = json["photo_of_you"];
    }
    if (json["can_see_insights_as_brand"] is bool) {
      canSeeInsightsAsBrand = json["can_see_insights_as_brand"];
    }
    if (json["media_type"] is int) {
      mediaType = json["media_type"];
    }
    if (json["code"] is String) {
      code = json["code"];
    }
    if (json["caption"] is Map) {
      caption =
          json["caption"] == null ? null : Caption.fromJson(json["caption"]);
    }
    if (json["fundraiser_tag"] is Map) {
      fundraiserTag = json["fundraiser_tag"] == null
          ? null
          : FundraiserTag.fromJson(json["fundraiser_tag"]);
    }
    if (json["sharing_friction_info"] is Map) {
      sharingFrictionInfo = json["sharing_friction_info"] == null
          ? null
          : SharingFrictionInfo.fromJson(json["sharing_friction_info"]);
    }
    if (json["timeline_pinned_user_ids"] is List) {
      timelinePinnedUserIds = json["timeline_pinned_user_ids"] ?? [];
    }
    if (json["has_views_fetching"] is bool) {
      hasViewsFetching = json["has_views_fetching"];
    }
    if (json["original_media_has_visual_reply_media"] is bool) {
      originalMediaHasVisualReplyMedia =
          json["original_media_has_visual_reply_media"];
    }
    if (json["fb_user_tags"] is Map) {
      fbUserTags = json["fb_user_tags"] == null
          ? null
          : FbUserTags.fromJson(json["fb_user_tags"]);
    }
    if (json["coauthor_producers"] is List) {
      coauthorProducers = json["coauthor_producers"] == null
          ? null
          : (json["coauthor_producers"] as List)
              .map((e) => CoauthorProducers.fromJson(e))
              .toList();
    }
    if (json["coauthor_producer_can_see_organic_insights"] is bool) {
      coauthorProducerCanSeeOrganicInsights =
          json["coauthor_producer_can_see_organic_insights"];
    }
    if (json["invited_coauthor_producers"] is List) {
      invitedCoauthorProducers = json["invited_coauthor_producers"] ?? [];
    }
    if (json["is_in_profile_grid"] is bool) {
      isInProfileGrid = json["is_in_profile_grid"];
    }
    if (json["profile_grid_control_enabled"] is bool) {
      profileGridControlEnabled = json["profile_grid_control_enabled"];
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User2.fromJson(json["user"]);
    }
    if (json["owner"] is Map) {
      owner = json["owner"] == null ? null : Owner.fromJson(json["owner"]);
    }
    if (json["image_versions2"] is Map) {
      imageVersions2 = json["image_versions2"] == null
          ? null
          : ImageVersions2.fromJson(json["image_versions2"]);
    }
    if (json["original_width"] is int) {
      originalWidth = json["original_width"];
    }
    if (json["original_height"] is int) {
      originalHeight = json["original_height"];
    }
    if (json["media_notes"] is Map) {
      mediaNotes = json["media_notes"] == null
          ? null
          : MediaNotes.fromJson(json["media_notes"]);
    }
    if (json["enable_media_notes_production"] is bool) {
      enableMediaNotesProduction = json["enable_media_notes_production"];
    }
    if (json["product_type"] is String) {
      productType = json["product_type"];
    }
    if (json["is_paid_partnership"] is bool) {
      isPaidPartnership = json["is_paid_partnership"];
    }
    if (json["music_metadata"] is Map) {
      musicMetadata = json["music_metadata"] == null
          ? null
          : MusicMetadata.fromJson(json["music_metadata"]);
    }
    if (json["social_context"] is List) {
      socialContext = json["social_context"] ?? [];
    }
    if (json["organic_tracking_token"] is String) {
      organicTrackingToken = json["organic_tracking_token"];
    }
    if (json["ig_media_sharing_disabled"] is bool) {
      igMediaSharingDisabled = json["ig_media_sharing_disabled"];
    }
    if (json["crosspost_metadata"] is Map) {
      crosspostMetadata = json["crosspost_metadata"] == null
          ? null
          : CrosspostMetadata.fromJson(json["crosspost_metadata"]);
    }
    boostUnavailableIdentifier = json["boost_unavailable_identifier"];
    boostUnavailableReason = json["boost_unavailable_reason"];
    boostUnavailableReasonV2 = json["boost_unavailable_reason_v2"];
    if (json["subscribe_cta_visible"] is bool) {
      subscribeCtaVisible = json["subscribe_cta_visible"];
    }
    if (json["is_cutout_sticker_allowed"] is bool) {
      isCutoutStickerAllowed = json["is_cutout_sticker_allowed"];
    }
    if (json["gen_ai_detection_method"] is Map) {
      genAiDetectionMethod = json["gen_ai_detection_method"] == null
          ? null
          : GenAiDetectionMethod.fromJson(json["gen_ai_detection_method"]);
    }
    if (json["fb_aggregated_like_count"] is int) {
      fbAggregatedLikeCount = json["fb_aggregated_like_count"];
    }
    if (json["fb_aggregated_comment_count"] is int) {
      fbAggregatedCommentCount = json["fb_aggregated_comment_count"];
    }
    if (json["has_high_risk_gen_ai_inform_treatment"] is bool) {
      hasHighRiskGenAiInformTreatment =
          json["has_high_risk_gen_ai_inform_treatment"];
    }
    if (json["collab_follow_button_info"] is Map) {
      collabFollowButtonInfo = json["collab_follow_button_info"] == null
          ? null
          : CollabFollowButtonInfo.fromJson(json["collab_follow_button_info"]);
    }
    if (json["open_carousel_show_follow_button"] is bool) {
      openCarouselShowFollowButton = json["open_carousel_show_follow_button"];
    }
    if (json["is_tagged_media_shared_to_viewer_profile_grid"] is bool) {
      isTaggedMediaSharedToViewerProfileGrid =
          json["is_tagged_media_shared_to_viewer_profile_grid"];
    }
    if (json["should_show_author_pog_for_tagged_media_shared_to_profile_grid"]
        is bool) {
      shouldShowAuthorPogForTaggedMediaSharedToProfileGrid = json[
          "should_show_author_pog_for_tagged_media_shared_to_profile_grid"];
    }
    if (json["is_eligible_for_media_note_recs_nux"] is bool) {
      isEligibleForMediaNoteRecsNux =
          json["is_eligible_for_media_note_recs_nux"];
    }
    if (json["should_open_collab_bottomsheet_on_facepile_tap"] is bool) {
      shouldOpenCollabBottomsheetOnFacepileTap =
          json["should_open_collab_bottomsheet_on_facepile_tap"];
    }
    if (json["is_social_ufi_disabled"] is bool) {
      isSocialUfiDisabled = json["is_social_ufi_disabled"];
    }
    if (json["is_eligible_for_meta_ai_share"] is bool) {
      isEligibleForMetaAiShare = json["is_eligible_for_meta_ai_share"];
    }
    if (json["meta_ai_suggested_prompts"] is List) {
      metaAiSuggestedPrompts = json["meta_ai_suggested_prompts"] ?? [];
    }
    if (json["can_reply"] is bool) {
      canReply = json["can_reply"];
    }
    if (json["can_view_more_preview_comments"] is bool) {
      canViewMorePreviewComments = json["can_view_more_preview_comments"];
    }
    if (json["preview_comments"] is List) {
      previewComments = json["preview_comments"] ?? [];
    }
    if (json["comment_count"] is int) {
      commentCount = json["comment_count"];
    }
    if (json["hide_view_all_comment_entrypoint"] is bool) {
      hideViewAllCommentEntrypoint = json["hide_view_all_comment_entrypoint"];
    }
    if (json["inline_composer_display_condition"] is String) {
      inlineComposerDisplayCondition =
          json["inline_composer_display_condition"];
    }
    if (json["inline_composer_imp_trigger_time"] is int) {
      inlineComposerImpTriggerTime = json["inline_composer_imp_trigger_time"];
    }
    if (json["is_comments_gif_composer_enabled"] is bool) {
      isCommentsGifComposerEnabled = json["is_comments_gif_composer_enabled"];
    }
    if (json["comment_inform_treatment"] is Map) {
      commentInformTreatment = json["comment_inform_treatment"] == null
          ? null
          : CommentInformTreatment.fromJson(json["comment_inform_treatment"]);
    }
    if (json["has_liked"] is bool) {
      hasLiked = json["has_liked"];
    }
    if (json["like_count"] is int) {
      likeCount = json["like_count"];
    }
    if (json["top_likers"] is List) {
      topLikers = json["top_likers"] ?? [];
    }
    if (json["video_sticker_locales"] is List) {
      videoStickerLocales = json["video_sticker_locales"] ?? [];
    }
    if (json["clips_tab_pinned_user_ids"] is List) {
      clipsTabPinnedUserIds = json["clips_tab_pinned_user_ids"] ?? [];
    }
    if (json["can_viewer_save"] is bool) {
      canViewerSave = json["can_viewer_save"];
    }
    if (json["can_viewer_reshare"] is bool) {
      canViewerReshare = json["can_viewer_reshare"];
    }
    shopRoutingUserId = json["shop_routing_user_id"];
    if (json["is_organic_product_tagging_eligible"] is bool) {
      isOrganicProductTaggingEligible =
          json["is_organic_product_tagging_eligible"];
    }
    igbioProduct = json["igbio_product"];
    if (json["featured_products"] is List) {
      featuredProducts = json["featured_products"] ?? [];
    }
    if (json["product_suggestions"] is List) {
      productSuggestions = json["product_suggestions"] ?? [];
    }
    if (json["commerce_integrity_review_decision"] is String) {
      commerceIntegrityReviewDecision =
          json["commerce_integrity_review_decision"];
    }
    if (json["open_carousel_submission_state"] is String) {
      openCarouselSubmissionState = json["open_carousel_submission_state"];
    }
    if (json["carousel_media_count"] is int) {
      carouselMediaCount = json["carousel_media_count"];
    }
    if (json["carousel_media"] is List) {
      carouselMedia = json["carousel_media"] == null
          ? null
          : (json["carousel_media"] as List)
              .map((e) => CarouselMedia.fromJson(e))
              .toList();
    }
    if (json["carousel_media_pending_post_count"] is int) {
      carouselMediaPendingPostCount = json["carousel_media_pending_post_count"];
    }
    if (json["is_reuse_allowed"] is bool) {
      isReuseAllowed = json["is_reuse_allowed"];
    }
    if (json["has_more_comments"] is bool) {
      hasMoreComments = json["has_more_comments"];
    }
    if (json["max_num_visible_preview_comments"] is int) {
      maxNumVisiblePreviewComments = json["max_num_visible_preview_comments"];
    }
    if (json["explore_hide_comments"] is bool) {
      exploreHideComments = json["explore_hide_comments"];
    }
    if (json["is_open_to_public_submission"] is bool) {
      isOpenToPublicSubmission = json["is_open_to_public_submission"];
    }
    if (json["carousel_media_ids"] is List) {
      carouselMediaIds = json["carousel_media_ids"] == null
          ? null
          : List<int>.from(json["carousel_media_ids"]);
    }
  }

  static List<Items> fromList(List<Map<String, dynamic>> list) {
    return list.map(Items.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["taken_at"] = takenAt;
    _data["pk"] = pk;
    _data["id"] = id;
    _data["fbid"] = fbid;
    _data["device_timestamp"] = deviceTimestamp;
    _data["caption_is_edited"] = captionIsEdited;
    _data["strong_id__"] = strongId;
    _data["deleted_reason"] = deletedReason;
    _data["has_shared_to_fb"] = hasSharedToFb;
    _data["has_delayed_metadata"] = hasDelayedMetadata;
    _data["mezql_token"] = mezqlToken;
    _data["share_count_disabled"] = shareCountDisabled;
    _data["is_visual_reply_commenter_notice_enabled"] =
        isVisualReplyCommenterNoticeEnabled;
    _data["like_and_view_counts_disabled"] = likeAndViewCountsDisabled;
    _data["is_post_live_clips_media"] = isPostLiveClipsMedia;
    _data["can_modify_carousel"] = canModifyCarousel;
    _data["is_quiet_post"] = isQuietPost;
    _data["profile_grid_thumbnail_fitting_style"] =
        profileGridThumbnailFittingStyle;
    _data["comment_threading_enabled"] = commentThreadingEnabled;
    _data["is_unified_video"] = isUnifiedVideo;
    _data["commerciality_status"] = commercialityStatus;
    _data["client_cache_key"] = clientCacheKey;
    _data["integrity_review_decision"] = integrityReviewDecision;
    _data["should_request_ads"] = shouldRequestAds;
    _data["is_reshare_of_text_post_app_media_in_ig"] =
        isReshareOfTextPostAppMediaInIg;
    _data["has_privately_liked"] = hasPrivatelyLiked;
    _data["filter_type"] = filterType;
    if (usertags != null) {
      _data["usertags"] = usertags?.toJson();
    }
    _data["photo_of_you"] = photoOfYou;
    _data["can_see_insights_as_brand"] = canSeeInsightsAsBrand;
    _data["media_type"] = mediaType;
    _data["code"] = code;
    if (caption != null) {
      _data["caption"] = caption?.toJson();
    }
    if (fundraiserTag != null) {
      _data["fundraiser_tag"] = fundraiserTag?.toJson();
    }
    if (sharingFrictionInfo != null) {
      _data["sharing_friction_info"] = sharingFrictionInfo?.toJson();
    }
    if (timelinePinnedUserIds != null) {
      _data["timeline_pinned_user_ids"] = timelinePinnedUserIds;
    }
    _data["has_views_fetching"] = hasViewsFetching;
    _data["original_media_has_visual_reply_media"] =
        originalMediaHasVisualReplyMedia;
    if (fbUserTags != null) {
      _data["fb_user_tags"] = fbUserTags?.toJson();
    }
    if (coauthorProducers != null) {
      _data["coauthor_producers"] =
          coauthorProducers?.map((e) => e.toJson()).toList();
    }
    _data["coauthor_producer_can_see_organic_insights"] =
        coauthorProducerCanSeeOrganicInsights;
    if (invitedCoauthorProducers != null) {
      _data["invited_coauthor_producers"] = invitedCoauthorProducers;
    }
    _data["is_in_profile_grid"] = isInProfileGrid;
    _data["profile_grid_control_enabled"] = profileGridControlEnabled;
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    if (owner != null) {
      _data["owner"] = owner?.toJson();
    }
    if (imageVersions2 != null) {
      _data["image_versions2"] = imageVersions2?.toJson();
    }
    _data["original_width"] = originalWidth;
    _data["original_height"] = originalHeight;
    if (mediaNotes != null) {
      _data["media_notes"] = mediaNotes?.toJson();
    }
    _data["enable_media_notes_production"] = enableMediaNotesProduction;
    _data["product_type"] = productType;
    _data["is_paid_partnership"] = isPaidPartnership;
    if (musicMetadata != null) {
      _data["music_metadata"] = musicMetadata?.toJson();
    }
    if (socialContext != null) {
      _data["social_context"] = socialContext;
    }
    _data["organic_tracking_token"] = organicTrackingToken;
    _data["ig_media_sharing_disabled"] = igMediaSharingDisabled;
    if (crosspostMetadata != null) {
      _data["crosspost_metadata"] = crosspostMetadata?.toJson();
    }
    _data["boost_unavailable_identifier"] = boostUnavailableIdentifier;
    _data["boost_unavailable_reason"] = boostUnavailableReason;
    _data["boost_unavailable_reason_v2"] = boostUnavailableReasonV2;
    _data["subscribe_cta_visible"] = subscribeCtaVisible;
    _data["is_cutout_sticker_allowed"] = isCutoutStickerAllowed;
    if (genAiDetectionMethod != null) {
      _data["gen_ai_detection_method"] = genAiDetectionMethod?.toJson();
    }
    _data["fb_aggregated_like_count"] = fbAggregatedLikeCount;
    _data["fb_aggregated_comment_count"] = fbAggregatedCommentCount;
    _data["has_high_risk_gen_ai_inform_treatment"] =
        hasHighRiskGenAiInformTreatment;
    if (collabFollowButtonInfo != null) {
      _data["collab_follow_button_info"] = collabFollowButtonInfo?.toJson();
    }
    _data["open_carousel_show_follow_button"] = openCarouselShowFollowButton;
    _data["is_tagged_media_shared_to_viewer_profile_grid"] =
        isTaggedMediaSharedToViewerProfileGrid;
    _data["should_show_author_pog_for_tagged_media_shared_to_profile_grid"] =
        shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
    _data["is_eligible_for_media_note_recs_nux"] =
        isEligibleForMediaNoteRecsNux;
    _data["should_open_collab_bottomsheet_on_facepile_tap"] =
        shouldOpenCollabBottomsheetOnFacepileTap;
    _data["is_social_ufi_disabled"] = isSocialUfiDisabled;
    _data["is_eligible_for_meta_ai_share"] = isEligibleForMetaAiShare;
    if (metaAiSuggestedPrompts != null) {
      _data["meta_ai_suggested_prompts"] = metaAiSuggestedPrompts;
    }
    _data["can_reply"] = canReply;
    _data["can_view_more_preview_comments"] = canViewMorePreviewComments;
    if (previewComments != null) {
      _data["preview_comments"] = previewComments;
    }
    _data["comment_count"] = commentCount;
    _data["hide_view_all_comment_entrypoint"] = hideViewAllCommentEntrypoint;
    _data["inline_composer_display_condition"] = inlineComposerDisplayCondition;
    _data["inline_composer_imp_trigger_time"] = inlineComposerImpTriggerTime;
    _data["is_comments_gif_composer_enabled"] = isCommentsGifComposerEnabled;
    if (commentInformTreatment != null) {
      _data["comment_inform_treatment"] = commentInformTreatment?.toJson();
    }
    _data["has_liked"] = hasLiked;
    _data["like_count"] = likeCount;
    if (topLikers != null) {
      _data["top_likers"] = topLikers;
    }
    if (videoStickerLocales != null) {
      _data["video_sticker_locales"] = videoStickerLocales;
    }
    if (clipsTabPinnedUserIds != null) {
      _data["clips_tab_pinned_user_ids"] = clipsTabPinnedUserIds;
    }
    _data["can_viewer_save"] = canViewerSave;
    _data["can_viewer_reshare"] = canViewerReshare;
    _data["shop_routing_user_id"] = shopRoutingUserId;
    _data["is_organic_product_tagging_eligible"] =
        isOrganicProductTaggingEligible;
    _data["igbio_product"] = igbioProduct;
    if (featuredProducts != null) {
      _data["featured_products"] = featuredProducts;
    }
    if (productSuggestions != null) {
      _data["product_suggestions"] = productSuggestions;
    }
    _data["commerce_integrity_review_decision"] =
        commerceIntegrityReviewDecision;
    _data["open_carousel_submission_state"] = openCarouselSubmissionState;
    _data["carousel_media_count"] = carouselMediaCount;
    if (carouselMedia != null) {
      _data["carousel_media"] = carouselMedia?.map((e) => e.toJson()).toList();
    }
    _data["carousel_media_pending_post_count"] = carouselMediaPendingPostCount;
    _data["is_reuse_allowed"] = isReuseAllowed;
    _data["has_more_comments"] = hasMoreComments;
    _data["max_num_visible_preview_comments"] = maxNumVisiblePreviewComments;
    _data["explore_hide_comments"] = exploreHideComments;
    _data["is_open_to_public_submission"] = isOpenToPublicSubmission;
    if (carouselMediaIds != null) {
      _data["carousel_media_ids"] = carouselMediaIds;
    }
    return _data;
  }
}

class CarouselMedia {
  String? id;
  bool? explorePivotGrid;
  String? carouselParentId;
  String? strongId;
  int? pk;
  String? commercialityStatus;
  int? takenAt;
  String? productType;
  int? mediaType;
  ImageVersions21? imageVersions2;
  int? originalWidth;
  int? originalHeight;
  String? preview;
  Usertags1? usertags;
  List<dynamic>? featuredProducts;
  FbUserTags1? fbUserTags;
  dynamic shopRoutingUserId;
  SharingFrictionInfo1? sharingFrictionInfo;
  List<dynamic>? productSuggestions;
  List<dynamic>? videoStickerLocales;

  CarouselMedia(
      {this.id,
      this.explorePivotGrid,
      this.carouselParentId,
      this.strongId,
      this.pk,
      this.commercialityStatus,
      this.takenAt,
      this.productType,
      this.mediaType,
      this.imageVersions2,
      this.originalWidth,
      this.originalHeight,
      this.preview,
      this.usertags,
      this.featuredProducts,
      this.fbUserTags,
      this.shopRoutingUserId,
      this.sharingFrictionInfo,
      this.productSuggestions,
      this.videoStickerLocales});

  CarouselMedia.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["explore_pivot_grid"] is bool) {
      explorePivotGrid = json["explore_pivot_grid"];
    }
    if (json["carousel_parent_id"] is String) {
      carouselParentId = json["carousel_parent_id"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["commerciality_status"] is String) {
      commercialityStatus = json["commerciality_status"];
    }
    if (json["taken_at"] is int) {
      takenAt = json["taken_at"];
    }
    if (json["product_type"] is String) {
      productType = json["product_type"];
    }
    if (json["media_type"] is int) {
      mediaType = json["media_type"];
    }
    if (json["image_versions2"] is Map) {
      imageVersions2 = json["image_versions2"] == null
          ? null
          : ImageVersions21.fromJson(json["image_versions2"]);
    }
    if (json["original_width"] is int) {
      originalWidth = json["original_width"];
    }
    if (json["original_height"] is int) {
      originalHeight = json["original_height"];
    }
    if (json["preview"] is String) {
      preview = json["preview"];
    }
    if (json["usertags"] is Map) {
      usertags = json["usertags"] == null
          ? null
          : Usertags1.fromJson(json["usertags"]);
    }
    if (json["featured_products"] is List) {
      featuredProducts = json["featured_products"] ?? [];
    }
    if (json["fb_user_tags"] is Map) {
      fbUserTags = json["fb_user_tags"] == null
          ? null
          : FbUserTags1.fromJson(json["fb_user_tags"]);
    }
    shopRoutingUserId = json["shop_routing_user_id"];
    if (json["sharing_friction_info"] is Map) {
      sharingFrictionInfo = json["sharing_friction_info"] == null
          ? null
          : SharingFrictionInfo1.fromJson(json["sharing_friction_info"]);
    }
    if (json["product_suggestions"] is List) {
      productSuggestions = json["product_suggestions"] ?? [];
    }
    if (json["video_sticker_locales"] is List) {
      videoStickerLocales = json["video_sticker_locales"] ?? [];
    }
  }

  static List<CarouselMedia> fromList(List<Map<String, dynamic>> list) {
    return list.map(CarouselMedia.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["explore_pivot_grid"] = explorePivotGrid;
    _data["carousel_parent_id"] = carouselParentId;
    _data["strong_id__"] = strongId;
    _data["pk"] = pk;
    _data["commerciality_status"] = commercialityStatus;
    _data["taken_at"] = takenAt;
    _data["product_type"] = productType;
    _data["media_type"] = mediaType;
    if (imageVersions2 != null) {
      _data["image_versions2"] = imageVersions2?.toJson();
    }
    _data["original_width"] = originalWidth;
    _data["original_height"] = originalHeight;
    _data["preview"] = preview;
    if (usertags != null) {
      _data["usertags"] = usertags?.toJson();
    }
    if (featuredProducts != null) {
      _data["featured_products"] = featuredProducts;
    }
    if (fbUserTags != null) {
      _data["fb_user_tags"] = fbUserTags?.toJson();
    }
    _data["shop_routing_user_id"] = shopRoutingUserId;
    if (sharingFrictionInfo != null) {
      _data["sharing_friction_info"] = sharingFrictionInfo?.toJson();
    }
    if (productSuggestions != null) {
      _data["product_suggestions"] = productSuggestions;
    }
    if (videoStickerLocales != null) {
      _data["video_sticker_locales"] = videoStickerLocales;
    }
    return _data;
  }
}

class SharingFrictionInfo1 {
  dynamic bloksAppUrl;
  bool? shouldHaveSharingFriction;
  dynamic sharingFrictionPayload;

  SharingFrictionInfo1(
      {this.bloksAppUrl,
      this.shouldHaveSharingFriction,
      this.sharingFrictionPayload});

  SharingFrictionInfo1.fromJson(Map<String, dynamic> json) {
    bloksAppUrl = json["bloks_app_url"];
    if (json["should_have_sharing_friction"] is bool) {
      shouldHaveSharingFriction = json["should_have_sharing_friction"];
    }
    sharingFrictionPayload = json["sharing_friction_payload"];
  }

  static List<SharingFrictionInfo1> fromList(List<Map<String, dynamic>> list) {
    return list.map(SharingFrictionInfo1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bloks_app_url"] = bloksAppUrl;
    _data["should_have_sharing_friction"] = shouldHaveSharingFriction;
    _data["sharing_friction_payload"] = sharingFrictionPayload;
    return _data;
  }
}

class FbUserTags1 {
  List<dynamic>? inList;

  FbUserTags1({this.inList});

  FbUserTags1.fromJson(Map<String, dynamic> json) {
    if (json["in"] is List) {
      inList = json["in"] ?? [];
    }
  }

  static List<FbUserTags1> fromList(List<Map<String, dynamic>> list) {
    return list.map(FbUserTags1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (inList != null) {
      _data["in"] = inList;
    }
    return _data;
  }
}

class Usertags1 {
  List<In1>? inList;

  Usertags1({this.inList});

  Usertags1.fromJson(Map<String, dynamic> json) {
    if (json["in"] is List) {
      inList = json["in"] == null
          ? null
          : (json["in"] as List).map((e) => In1.fromJson(e)).toList();
    }
  }

  static List<Usertags1> fromList(List<Map<String, dynamic>> list) {
    return list.map(Usertags1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (inList != null) {
      _data["in"] = inList?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class In1 {
  List<double>? position;
  bool? showCategoryOfUser;
  User3? user;

  In1({this.position, this.showCategoryOfUser, this.user});

  In1.fromJson(Map<String, dynamic> json) {
    if (json["position"] is List) {
      position =
          json["position"] == null ? null : List<double>.from(json["position"]);
    }
    if (json["show_category_of_user"] is bool) {
      showCategoryOfUser = json["show_category_of_user"];
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User3.fromJson(json["user"]);
    }
  }

  static List<In1> fromList(List<Map<String, dynamic>> list) {
    return list.map(In1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (position != null) {
      _data["position"] = position;
    }
    _data["show_category_of_user"] = showCategoryOfUser;
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User3 {
  int? pk;
  String? pkId;
  String? id;
  String? username;
  String? fullName;
  bool? isPrivate;
  String? strongId;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;

  User3(
      {this.pk,
      this.pkId,
      this.id,
      this.username,
      this.fullName,
      this.isPrivate,
      this.strongId,
      this.isVerified,
      this.profilePicId,
      this.profilePicUrl});

  User3.fromJson(Map<String, dynamic> json) {
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["pk_id"] is String) {
      pkId = json["pk_id"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if (json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if (json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
  }

  static List<User3> fromList(List<Map<String, dynamic>> list) {
    return list.map(User3.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["id"] = id;
    _data["username"] = username;
    _data["full_name"] = fullName;
    _data["is_private"] = isPrivate;
    _data["strong_id__"] = strongId;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    return _data;
  }
}

class ImageVersions21 {
  List<Candidates1>? candidates;

  ImageVersions21({this.candidates});

  ImageVersions21.fromJson(Map<String, dynamic> json) {
    if (json["candidates"] is List) {
      candidates = json["candidates"] == null
          ? null
          : (json["candidates"] as List)
              .map((e) => Candidates1.fromJson(e))
              .toList();
    }
  }

  static List<ImageVersions21> fromList(List<Map<String, dynamic>> list) {
    return list.map(ImageVersions21.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (candidates != null) {
      _data["candidates"] = candidates?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Candidates1 {
  int? width;
  int? height;
  String? url;
  String? scansProfile;
  List<int>? estimatedScansSizes;

  Candidates1(
      {this.width,
      this.height,
      this.url,
      this.scansProfile,
      this.estimatedScansSizes});

  Candidates1.fromJson(Map<String, dynamic> json) {
    if (json["width"] is int) {
      width = json["width"];
    }
    if (json["height"] is int) {
      height = json["height"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["scans_profile"] is String) {
      scansProfile = json["scans_profile"];
    }
    if (json["estimated_scans_sizes"] is List) {
      estimatedScansSizes = json["estimated_scans_sizes"] == null
          ? null
          : List<int>.from(json["estimated_scans_sizes"]);
    }
  }

  static List<Candidates1> fromList(List<Map<String, dynamic>> list) {
    return list.map(Candidates1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["height"] = height;
    _data["url"] = url;
    _data["scans_profile"] = scansProfile;
    if (estimatedScansSizes != null) {
      _data["estimated_scans_sizes"] = estimatedScansSizes;
    }
    return _data;
  }
}

class CommentInformTreatment {
  dynamic actionType;
  bool? shouldHaveInformTreatment;
  String? text;
  dynamic url;

  CommentInformTreatment(
      {this.actionType, this.shouldHaveInformTreatment, this.text, this.url});

  CommentInformTreatment.fromJson(Map<String, dynamic> json) {
    actionType = json["action_type"];
    if (json["should_have_inform_treatment"] is bool) {
      shouldHaveInformTreatment = json["should_have_inform_treatment"];
    }
    if (json["text"] is String) {
      text = json["text"];
    }
    url = json["url"];
  }

  static List<CommentInformTreatment> fromList(
      List<Map<String, dynamic>> list) {
    return list.map(CommentInformTreatment.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["action_type"] = actionType;
    _data["should_have_inform_treatment"] = shouldHaveInformTreatment;
    _data["text"] = text;
    _data["url"] = url;
    return _data;
  }
}

class CollabFollowButtonInfo {
  bool? showFollowButton;
  bool? isOwnerInAuthorExp;

  CollabFollowButtonInfo({this.showFollowButton, this.isOwnerInAuthorExp});

  CollabFollowButtonInfo.fromJson(Map<String, dynamic> json) {
    if (json["show_follow_button"] is bool) {
      showFollowButton = json["show_follow_button"];
    }
    if (json["is_owner_in_author_exp"] is bool) {
      isOwnerInAuthorExp = json["is_owner_in_author_exp"];
    }
  }

  static List<CollabFollowButtonInfo> fromList(
      List<Map<String, dynamic>> list) {
    return list.map(CollabFollowButtonInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["show_follow_button"] = showFollowButton;
    _data["is_owner_in_author_exp"] = isOwnerInAuthorExp;
    return _data;
  }
}

class GenAiDetectionMethod {
  String? detectionMethod;

  GenAiDetectionMethod({this.detectionMethod});

  GenAiDetectionMethod.fromJson(Map<String, dynamic> json) {
    if (json["detection_method"] is String) {
      detectionMethod = json["detection_method"];
    }
  }

  static List<GenAiDetectionMethod> fromList(List<Map<String, dynamic>> list) {
    return list.map(GenAiDetectionMethod.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["detection_method"] = detectionMethod;
    return _data;
  }
}

class CrosspostMetadata {
  CrosspostMetadata();

  CrosspostMetadata.fromJson(Map<String, dynamic> json) {}

  static List<CrosspostMetadata> fromList(List<Map<String, dynamic>> list) {
    return list.map(CrosspostMetadata.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class MusicMetadata {
  dynamic audioType;
  String? musicCanonicalId;
  dynamic pinnedMediaIds;
  dynamic musicInfo;
  dynamic originalSoundInfo;

  MusicMetadata(
      {this.audioType,
      this.musicCanonicalId,
      this.pinnedMediaIds,
      this.musicInfo,
      this.originalSoundInfo});

  MusicMetadata.fromJson(Map<String, dynamic> json) {
    audioType = json["audio_type"];
    if (json["music_canonical_id"] is String) {
      musicCanonicalId = json["music_canonical_id"];
    }
    pinnedMediaIds = json["pinned_media_ids"];
    musicInfo = json["music_info"];
    originalSoundInfo = json["original_sound_info"];
  }

  static List<MusicMetadata> fromList(List<Map<String, dynamic>> list) {
    return list.map(MusicMetadata.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["audio_type"] = audioType;
    _data["music_canonical_id"] = musicCanonicalId;
    _data["pinned_media_ids"] = pinnedMediaIds;
    _data["music_info"] = musicInfo;
    _data["original_sound_info"] = originalSoundInfo;
    return _data;
  }
}

class MediaNotes {
  List<dynamic>? items;

  MediaNotes({this.items});

  MediaNotes.fromJson(Map<String, dynamic> json) {
    if (json["items"] is List) {
      items = json["items"] ?? [];
    }
  }

  static List<MediaNotes> fromList(List<Map<String, dynamic>> list) {
    return list.map(MediaNotes.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (items != null) {
      _data["items"] = items;
    }
    return _data;
  }
}

class ImageVersions2 {
  List<Candidates>? candidates;

  ImageVersions2({this.candidates});

  ImageVersions2.fromJson(Map<String, dynamic> json) {
    if (json["candidates"] is List) {
      candidates = json["candidates"] == null
          ? null
          : (json["candidates"] as List)
              .map((e) => Candidates.fromJson(e))
              .toList();
    }
  }

  static List<ImageVersions2> fromList(List<Map<String, dynamic>> list) {
    return list.map(ImageVersions2.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (candidates != null) {
      _data["candidates"] = candidates?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Candidates {
  int? width;
  int? height;
  String? url;
  String? scansProfile;

  Candidates({this.width, this.height, this.url, this.scansProfile});

  Candidates.fromJson(Map<String, dynamic> json) {
    if (json["width"] is int) {
      width = json["width"];
    }
    if (json["height"] is int) {
      height = json["height"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["scans_profile"] is String) {
      scansProfile = json["scans_profile"];
    }
  }

  static List<Candidates> fromList(List<Map<String, dynamic>> list) {
    return list.map(Candidates.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["height"] = height;
    _data["url"] = url;
    _data["scans_profile"] = scansProfile;
    return _data;
  }
}

class Owner {
  int? fbidV2;
  bool? feedPostReshareDisabled;
  String? fullName;
  String? id;
  bool? isPrivate;
  bool? isUnpublished;
  int? pk;
  String? pkId;
  bool? showAccountTransparencyDetails;
  String? strongId;
  int? thirdPartyDownloadsEnabled;
  String? username;
  int? accountType;
  bool? canSeeQuietPostAttribution;
  List<dynamic>? accountBadges;
  FanClubInfo1? fanClubInfo;
  FriendshipStatus1? friendshipStatus;
  bool? hasAnonymousProfilePicture;
  bool? isFavorite;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  bool? transparencyProductEnabled;
  int? latestReelMedia;

  Owner(
      {this.fbidV2,
      this.feedPostReshareDisabled,
      this.fullName,
      this.id,
      this.isPrivate,
      this.isUnpublished,
      this.pk,
      this.pkId,
      this.showAccountTransparencyDetails,
      this.strongId,
      this.thirdPartyDownloadsEnabled,
      this.username,
      this.accountType,
      this.canSeeQuietPostAttribution,
      this.accountBadges,
      this.fanClubInfo,
      this.friendshipStatus,
      this.hasAnonymousProfilePicture,
      this.isFavorite,
      this.isVerified,
      this.profilePicId,
      this.profilePicUrl,
      this.transparencyProductEnabled,
      this.latestReelMedia});

  Owner.fromJson(Map<String, dynamic> json) {
    if (json["fbid_v2"] is int) {
      fbidV2 = json["fbid_v2"];
    }
    if (json["feed_post_reshare_disabled"] is bool) {
      feedPostReshareDisabled = json["feed_post_reshare_disabled"];
    }
    if (json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if (json["is_unpublished"] is bool) {
      isUnpublished = json["is_unpublished"];
    }
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["pk_id"] is String) {
      pkId = json["pk_id"];
    }
    if (json["show_account_transparency_details"] is bool) {
      showAccountTransparencyDetails =
          json["show_account_transparency_details"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["third_party_downloads_enabled"] is int) {
      thirdPartyDownloadsEnabled = json["third_party_downloads_enabled"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["account_type"] is int) {
      accountType = json["account_type"];
    }
    if (json["can_see_quiet_post_attribution"] is bool) {
      canSeeQuietPostAttribution = json["can_see_quiet_post_attribution"];
    }
    if (json["account_badges"] is List) {
      accountBadges = json["account_badges"] ?? [];
    }
    if (json["fan_club_info"] is Map) {
      fanClubInfo = json["fan_club_info"] == null
          ? null
          : FanClubInfo1.fromJson(json["fan_club_info"]);
    }
    if (json["friendship_status"] is Map) {
      friendshipStatus = json["friendship_status"] == null
          ? null
          : FriendshipStatus1.fromJson(json["friendship_status"]);
    }
    if (json["has_anonymous_profile_picture"] is bool) {
      hasAnonymousProfilePicture = json["has_anonymous_profile_picture"];
    }
    if (json["is_favorite"] is bool) {
      isFavorite = json["is_favorite"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if (json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
    if (json["transparency_product_enabled"] is bool) {
      transparencyProductEnabled = json["transparency_product_enabled"];
    }
    if (json["latest_reel_media"] is int) {
      latestReelMedia = json["latest_reel_media"];
    }
  }

  static List<Owner> fromList(List<Map<String, dynamic>> list) {
    return list.map(Owner.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["fbid_v2"] = fbidV2;
    _data["feed_post_reshare_disabled"] = feedPostReshareDisabled;
    _data["full_name"] = fullName;
    _data["id"] = id;
    _data["is_private"] = isPrivate;
    _data["is_unpublished"] = isUnpublished;
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["show_account_transparency_details"] = showAccountTransparencyDetails;
    _data["strong_id__"] = strongId;
    _data["third_party_downloads_enabled"] = thirdPartyDownloadsEnabled;
    _data["username"] = username;
    _data["account_type"] = accountType;
    _data["can_see_quiet_post_attribution"] = canSeeQuietPostAttribution;
    if (accountBadges != null) {
      _data["account_badges"] = accountBadges;
    }
    if (fanClubInfo != null) {
      _data["fan_club_info"] = fanClubInfo?.toJson();
    }
    if (friendshipStatus != null) {
      _data["friendship_status"] = friendshipStatus?.toJson();
    }
    _data["has_anonymous_profile_picture"] = hasAnonymousProfilePicture;
    _data["is_favorite"] = isFavorite;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    _data["transparency_product_enabled"] = transparencyProductEnabled;
    _data["latest_reel_media"] = latestReelMedia;
    return _data;
  }
}

class FriendshipStatus1 {
  bool? following;
  bool? isBestie;
  bool? isFeedFavorite;
  bool? isRestricted;

  FriendshipStatus1(
      {this.following, this.isBestie, this.isFeedFavorite, this.isRestricted});

  FriendshipStatus1.fromJson(Map<String, dynamic> json) {
    if (json["following"] is bool) {
      following = json["following"];
    }
    if (json["is_bestie"] is bool) {
      isBestie = json["is_bestie"];
    }
    if (json["is_feed_favorite"] is bool) {
      isFeedFavorite = json["is_feed_favorite"];
    }
    if (json["is_restricted"] is bool) {
      isRestricted = json["is_restricted"];
    }
  }

  static List<FriendshipStatus1> fromList(List<Map<String, dynamic>> list) {
    return list.map(FriendshipStatus1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["following"] = following;
    _data["is_bestie"] = isBestie;
    _data["is_feed_favorite"] = isFeedFavorite;
    _data["is_restricted"] = isRestricted;
    return _data;
  }
}

class FanClubInfo1 {
  dynamic autosaveToExclusiveHighlight;
  dynamic connectedMemberCount;
  dynamic fanClubId;
  dynamic fanClubName;
  dynamic hasCreatedSsc;
  dynamic hasEnoughSubscribersForSsc;
  dynamic isFanClubGiftingEligible;
  dynamic isFanClubReferralEligible;
  dynamic isFreeTrialEligible;
  dynamic largestPublicBcId;
  dynamic subscriberCount;
  dynamic fanConsiderationPageRevampEligiblity;

  FanClubInfo1(
      {this.autosaveToExclusiveHighlight,
      this.connectedMemberCount,
      this.fanClubId,
      this.fanClubName,
      this.hasCreatedSsc,
      this.hasEnoughSubscribersForSsc,
      this.isFanClubGiftingEligible,
      this.isFanClubReferralEligible,
      this.isFreeTrialEligible,
      this.largestPublicBcId,
      this.subscriberCount,
      this.fanConsiderationPageRevampEligiblity});

  FanClubInfo1.fromJson(Map<String, dynamic> json) {
    autosaveToExclusiveHighlight = json["autosave_to_exclusive_highlight"];
    connectedMemberCount = json["connected_member_count"];
    fanClubId = json["fan_club_id"];
    fanClubName = json["fan_club_name"];
    hasCreatedSsc = json["has_created_ssc"];
    hasEnoughSubscribersForSsc = json["has_enough_subscribers_for_ssc"];
    isFanClubGiftingEligible = json["is_fan_club_gifting_eligible"];
    isFanClubReferralEligible = json["is_fan_club_referral_eligible"];
    isFreeTrialEligible = json["is_free_trial_eligible"];
    largestPublicBcId = json["largest_public_bc_id"];
    subscriberCount = json["subscriber_count"];
    fanConsiderationPageRevampEligiblity =
        json["fan_consideration_page_revamp_eligiblity"];
  }

  static List<FanClubInfo1> fromList(List<Map<String, dynamic>> list) {
    return list.map(FanClubInfo1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["autosave_to_exclusive_highlight"] = autosaveToExclusiveHighlight;
    _data["connected_member_count"] = connectedMemberCount;
    _data["fan_club_id"] = fanClubId;
    _data["fan_club_name"] = fanClubName;
    _data["has_created_ssc"] = hasCreatedSsc;
    _data["has_enough_subscribers_for_ssc"] = hasEnoughSubscribersForSsc;
    _data["is_fan_club_gifting_eligible"] = isFanClubGiftingEligible;
    _data["is_fan_club_referral_eligible"] = isFanClubReferralEligible;
    _data["is_free_trial_eligible"] = isFreeTrialEligible;
    _data["largest_public_bc_id"] = largestPublicBcId;
    _data["subscriber_count"] = subscriberCount;
    _data["fan_consideration_page_revamp_eligiblity"] =
        fanConsiderationPageRevampEligiblity;
    return _data;
  }
}

class User2 {
  int? fbidV2;
  bool? feedPostReshareDisabled;
  String? fullName;
  String? id;
  bool? isPrivate;
  bool? isUnpublished;
  int? pk;
  String? pkId;
  bool? showAccountTransparencyDetails;
  String? strongId;
  int? thirdPartyDownloadsEnabled;
  String? username;
  int? accountType;
  List<dynamic>? accountBadges;
  FanClubInfo? fanClubInfo;
  FriendshipStatus? friendshipStatus;
  bool? hasAnonymousProfilePicture;
  bool? isFavorite;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  bool? transparencyProductEnabled;
  int? latestReelMedia;

  User2(
      {this.fbidV2,
      this.feedPostReshareDisabled,
      this.fullName,
      this.id,
      this.isPrivate,
      this.isUnpublished,
      this.pk,
      this.pkId,
      this.showAccountTransparencyDetails,
      this.strongId,
      this.thirdPartyDownloadsEnabled,
      this.username,
      this.accountType,
      this.accountBadges,
      this.fanClubInfo,
      this.friendshipStatus,
      this.hasAnonymousProfilePicture,
      this.isFavorite,
      this.isVerified,
      this.profilePicId,
      this.profilePicUrl,
      this.transparencyProductEnabled,
      this.latestReelMedia});

  User2.fromJson(Map<String, dynamic> json) {
    if (json["fbid_v2"] is int) {
      fbidV2 = json["fbid_v2"];
    }
    if (json["feed_post_reshare_disabled"] is bool) {
      feedPostReshareDisabled = json["feed_post_reshare_disabled"];
    }
    if (json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if (json["is_unpublished"] is bool) {
      isUnpublished = json["is_unpublished"];
    }
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["pk_id"] is String) {
      pkId = json["pk_id"];
    }
    if (json["show_account_transparency_details"] is bool) {
      showAccountTransparencyDetails =
          json["show_account_transparency_details"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["third_party_downloads_enabled"] is int) {
      thirdPartyDownloadsEnabled = json["third_party_downloads_enabled"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["account_type"] is int) {
      accountType = json["account_type"];
    }
    if (json["account_badges"] is List) {
      accountBadges = json["account_badges"] ?? [];
    }
    if (json["fan_club_info"] is Map) {
      fanClubInfo = json["fan_club_info"] == null
          ? null
          : FanClubInfo.fromJson(json["fan_club_info"]);
    }
    if (json["friendship_status"] is Map) {
      friendshipStatus = json["friendship_status"] == null
          ? null
          : FriendshipStatus.fromJson(json["friendship_status"]);
    }
    if (json["has_anonymous_profile_picture"] is bool) {
      hasAnonymousProfilePicture = json["has_anonymous_profile_picture"];
    }
    if (json["is_favorite"] is bool) {
      isFavorite = json["is_favorite"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if (json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
    if (json["transparency_product_enabled"] is bool) {
      transparencyProductEnabled = json["transparency_product_enabled"];
    }
    if (json["latest_reel_media"] is int) {
      latestReelMedia = json["latest_reel_media"];
    }
  }

  static List<User2> fromList(List<Map<String, dynamic>> list) {
    return list.map(User2.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["fbid_v2"] = fbidV2;
    _data["feed_post_reshare_disabled"] = feedPostReshareDisabled;
    _data["full_name"] = fullName;
    _data["id"] = id;
    _data["is_private"] = isPrivate;
    _data["is_unpublished"] = isUnpublished;
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["show_account_transparency_details"] = showAccountTransparencyDetails;
    _data["strong_id__"] = strongId;
    _data["third_party_downloads_enabled"] = thirdPartyDownloadsEnabled;
    _data["username"] = username;
    _data["account_type"] = accountType;
    if (accountBadges != null) {
      _data["account_badges"] = accountBadges;
    }
    if (fanClubInfo != null) {
      _data["fan_club_info"] = fanClubInfo?.toJson();
    }
    if (friendshipStatus != null) {
      _data["friendship_status"] = friendshipStatus?.toJson();
    }
    _data["has_anonymous_profile_picture"] = hasAnonymousProfilePicture;
    _data["is_favorite"] = isFavorite;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    _data["transparency_product_enabled"] = transparencyProductEnabled;
    _data["latest_reel_media"] = latestReelMedia;
    return _data;
  }
}

class FriendshipStatus {
  bool? following;
  bool? isBestie;
  bool? isFeedFavorite;
  bool? isRestricted;

  FriendshipStatus(
      {this.following, this.isBestie, this.isFeedFavorite, this.isRestricted});

  FriendshipStatus.fromJson(Map<String, dynamic> json) {
    if (json["following"] is bool) {
      following = json["following"];
    }
    if (json["is_bestie"] is bool) {
      isBestie = json["is_bestie"];
    }
    if (json["is_feed_favorite"] is bool) {
      isFeedFavorite = json["is_feed_favorite"];
    }
    if (json["is_restricted"] is bool) {
      isRestricted = json["is_restricted"];
    }
  }

  static List<FriendshipStatus> fromList(List<Map<String, dynamic>> list) {
    return list.map(FriendshipStatus.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["following"] = following;
    _data["is_bestie"] = isBestie;
    _data["is_feed_favorite"] = isFeedFavorite;
    _data["is_restricted"] = isRestricted;
    return _data;
  }
}

class FanClubInfo {
  dynamic autosaveToExclusiveHighlight;
  dynamic connectedMemberCount;
  dynamic fanClubId;
  dynamic fanClubName;
  dynamic hasCreatedSsc;
  dynamic hasEnoughSubscribersForSsc;
  dynamic isFanClubGiftingEligible;
  dynamic isFanClubReferralEligible;
  dynamic isFreeTrialEligible;
  dynamic largestPublicBcId;
  dynamic subscriberCount;
  dynamic fanConsiderationPageRevampEligiblity;

  FanClubInfo(
      {this.autosaveToExclusiveHighlight,
      this.connectedMemberCount,
      this.fanClubId,
      this.fanClubName,
      this.hasCreatedSsc,
      this.hasEnoughSubscribersForSsc,
      this.isFanClubGiftingEligible,
      this.isFanClubReferralEligible,
      this.isFreeTrialEligible,
      this.largestPublicBcId,
      this.subscriberCount,
      this.fanConsiderationPageRevampEligiblity});

  FanClubInfo.fromJson(Map<String, dynamic> json) {
    autosaveToExclusiveHighlight = json["autosave_to_exclusive_highlight"];
    connectedMemberCount = json["connected_member_count"];
    fanClubId = json["fan_club_id"];
    fanClubName = json["fan_club_name"];
    hasCreatedSsc = json["has_created_ssc"];
    hasEnoughSubscribersForSsc = json["has_enough_subscribers_for_ssc"];
    isFanClubGiftingEligible = json["is_fan_club_gifting_eligible"];
    isFanClubReferralEligible = json["is_fan_club_referral_eligible"];
    isFreeTrialEligible = json["is_free_trial_eligible"];
    largestPublicBcId = json["largest_public_bc_id"];
    subscriberCount = json["subscriber_count"];
    fanConsiderationPageRevampEligiblity =
        json["fan_consideration_page_revamp_eligiblity"];
  }

  static List<FanClubInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(FanClubInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["autosave_to_exclusive_highlight"] = autosaveToExclusiveHighlight;
    _data["connected_member_count"] = connectedMemberCount;
    _data["fan_club_id"] = fanClubId;
    _data["fan_club_name"] = fanClubName;
    _data["has_created_ssc"] = hasCreatedSsc;
    _data["has_enough_subscribers_for_ssc"] = hasEnoughSubscribersForSsc;
    _data["is_fan_club_gifting_eligible"] = isFanClubGiftingEligible;
    _data["is_fan_club_referral_eligible"] = isFanClubReferralEligible;
    _data["is_free_trial_eligible"] = isFreeTrialEligible;
    _data["largest_public_bc_id"] = largestPublicBcId;
    _data["subscriber_count"] = subscriberCount;
    _data["fan_consideration_page_revamp_eligiblity"] =
        fanConsiderationPageRevampEligiblity;
    return _data;
  }
}

class CoauthorProducers {
  int? pk;
  String? pkId;
  String? id;
  String? username;
  String? fullName;
  bool? isPrivate;
  String? strongId;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;

  CoauthorProducers(
      {this.pk,
      this.pkId,
      this.id,
      this.username,
      this.fullName,
      this.isPrivate,
      this.strongId,
      this.isVerified,
      this.profilePicId,
      this.profilePicUrl});

  CoauthorProducers.fromJson(Map<String, dynamic> json) {
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["pk_id"] is String) {
      pkId = json["pk_id"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if (json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if (json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
  }

  static List<CoauthorProducers> fromList(List<Map<String, dynamic>> list) {
    return list.map(CoauthorProducers.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["id"] = id;
    _data["username"] = username;
    _data["full_name"] = fullName;
    _data["is_private"] = isPrivate;
    _data["strong_id__"] = strongId;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    return _data;
  }
}

class FbUserTags {
  List<dynamic>? inList;

  FbUserTags({this.inList});

  FbUserTags.fromJson(Map<String, dynamic> json) {
    if (json["in"] is List) {
      inList = json["in"] ?? [];
    }
  }

  static List<FbUserTags> fromList(List<Map<String, dynamic>> list) {
    return list.map(FbUserTags.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (inList != null) {
      _data["in"] = inList;
    }
    return _data;
  }
}

class SharingFrictionInfo {
  dynamic bloksAppUrl;
  bool? shouldHaveSharingFriction;
  dynamic sharingFrictionPayload;

  SharingFrictionInfo(
      {this.bloksAppUrl,
      this.shouldHaveSharingFriction,
      this.sharingFrictionPayload});

  SharingFrictionInfo.fromJson(Map<String, dynamic> json) {
    bloksAppUrl = json["bloks_app_url"];
    if (json["should_have_sharing_friction"] is bool) {
      shouldHaveSharingFriction = json["should_have_sharing_friction"];
    }
    sharingFrictionPayload = json["sharing_friction_payload"];
  }

  static List<SharingFrictionInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(SharingFrictionInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bloks_app_url"] = bloksAppUrl;
    _data["should_have_sharing_friction"] = shouldHaveSharingFriction;
    _data["sharing_friction_payload"] = sharingFrictionPayload;
    return _data;
  }
}

class FundraiserTag {
  bool? hasStandaloneFundraiser;

  FundraiserTag({this.hasStandaloneFundraiser});

  FundraiserTag.fromJson(Map<String, dynamic> json) {
    if (json["has_standalone_fundraiser"] is bool) {
      hasStandaloneFundraiser = json["has_standalone_fundraiser"];
    }
  }

  static List<FundraiserTag> fromList(List<Map<String, dynamic>> list) {
    return list.map(FundraiserTag.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has_standalone_fundraiser"] = hasStandaloneFundraiser;
    return _data;
  }
}

class Caption {
  int? bitFlags;
  int? createdAt;
  int? createdAtUtc;
  bool? didReportAsSpam;
  bool? isRankedComment;
  String? pk;
  bool? shareEnabled;
  String? contentType;
  int? mediaId;
  String? status;
  int? type;
  int? userId;
  String? strongId;
  String? text;
  User1? user;
  bool? isCovered;
  int? privateReplyStatus;

  Caption(
      {this.bitFlags,
      this.createdAt,
      this.createdAtUtc,
      this.didReportAsSpam,
      this.isRankedComment,
      this.pk,
      this.shareEnabled,
      this.contentType,
      this.mediaId,
      this.status,
      this.type,
      this.userId,
      this.strongId,
      this.text,
      this.user,
      this.isCovered,
      this.privateReplyStatus});

  Caption.fromJson(Map<String, dynamic> json) {
    if (json["bit_flags"] is int) {
      bitFlags = json["bit_flags"];
    }
    if (json["created_at"] is int) {
      createdAt = json["created_at"];
    }
    if (json["created_at_utc"] is int) {
      createdAtUtc = json["created_at_utc"];
    }
    if (json["did_report_as_spam"] is bool) {
      didReportAsSpam = json["did_report_as_spam"];
    }
    if (json["is_ranked_comment"] is bool) {
      isRankedComment = json["is_ranked_comment"];
    }
    if (json["pk"] is String) {
      pk = json["pk"];
    }
    if (json["share_enabled"] is bool) {
      shareEnabled = json["share_enabled"];
    }
    if (json["content_type"] is String) {
      contentType = json["content_type"];
    }
    if (json["media_id"] is int) {
      mediaId = json["media_id"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["type"] is int) {
      type = json["type"];
    }
    if (json["user_id"] is int) {
      userId = json["user_id"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["text"] is String) {
      text = json["text"];
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User1.fromJson(json["user"]);
    }
    if (json["is_covered"] is bool) {
      isCovered = json["is_covered"];
    }
    if (json["private_reply_status"] is int) {
      privateReplyStatus = json["private_reply_status"];
    }
  }

  static List<Caption> fromList(List<Map<String, dynamic>> list) {
    return list.map(Caption.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bit_flags"] = bitFlags;
    _data["created_at"] = createdAt;
    _data["created_at_utc"] = createdAtUtc;
    _data["did_report_as_spam"] = didReportAsSpam;
    _data["is_ranked_comment"] = isRankedComment;
    _data["pk"] = pk;
    _data["share_enabled"] = shareEnabled;
    _data["content_type"] = contentType;
    _data["media_id"] = mediaId;
    _data["status"] = status;
    _data["type"] = type;
    _data["user_id"] = userId;
    _data["strong_id__"] = strongId;
    _data["text"] = text;
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    _data["is_covered"] = isCovered;
    _data["private_reply_status"] = privateReplyStatus;
    return _data;
  }
}

class User1 {
  int? pk;
  String? pkId;
  String? id;
  String? username;
  String? fullName;
  bool? isPrivate;
  bool? isUnpublished;
  String? strongId;
  int? fbidV2;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;

  User1(
      {this.pk,
      this.pkId,
      this.id,
      this.username,
      this.fullName,
      this.isPrivate,
      this.isUnpublished,
      this.strongId,
      this.fbidV2,
      this.isVerified,
      this.profilePicId,
      this.profilePicUrl});

  User1.fromJson(Map<String, dynamic> json) {
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["pk_id"] is String) {
      pkId = json["pk_id"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if (json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if (json["is_unpublished"] is bool) {
      isUnpublished = json["is_unpublished"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["fbid_v2"] is int) {
      fbidV2 = json["fbid_v2"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if (json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
  }

  static List<User1> fromList(List<Map<String, dynamic>> list) {
    return list.map(User1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["id"] = id;
    _data["username"] = username;
    _data["full_name"] = fullName;
    _data["is_private"] = isPrivate;
    _data["is_unpublished"] = isUnpublished;
    _data["strong_id__"] = strongId;
    _data["fbid_v2"] = fbidV2;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    return _data;
  }
}

class Usertags {
  List<In>? inList;

  Usertags({this.inList});

  Usertags.fromJson(Map<String, dynamic> json) {
    if (json["in"] is List) {
      inList = json["in"] == null
          ? null
          : (json["in"] as List).map((e) => In.fromJson(e)).toList();
    }
  }

  static List<Usertags> fromList(List<Map<String, dynamic>> list) {
    return list.map(Usertags.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (inList != null) {
      _data["in"] = inList?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class In {
  List<double>? position;
  bool? showCategoryOfUser;
  User? user;

  In({this.position, this.showCategoryOfUser, this.user});

  In.fromJson(Map<String, dynamic> json) {
    if (json["position"] is List) {
      position =
          json["position"] == null ? null : List<double>.from(json["position"]);
    }
    if (json["show_category_of_user"] is bool) {
      showCategoryOfUser = json["show_category_of_user"];
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
  }

  static List<In> fromList(List<Map<String, dynamic>> list) {
    return list.map(In.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (position != null) {
      _data["position"] = position;
    }
    _data["show_category_of_user"] = showCategoryOfUser;
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User {
  int? pk;
  String? pkId;
  String? id;
  String? username;
  String? fullName;
  bool? isPrivate;
  String? strongId;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;

  User(
      {this.pk,
      this.pkId,
      this.id,
      this.username,
      this.fullName,
      this.isPrivate,
      this.strongId,
      this.isVerified,
      this.profilePicId,
      this.profilePicUrl});

  User.fromJson(Map<String, dynamic> json) {
    if (json["pk"] is int) {
      pk = json["pk"];
    }
    if (json["pk_id"] is String) {
      pkId = json["pk_id"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if (json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if (json["strong_id__"] is String) {
      strongId = json["strong_id__"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if (json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
  }

  static List<User> fromList(List<Map<String, dynamic>> list) {
    return list.map(User.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["id"] = id;
    _data["username"] = username;
    _data["full_name"] = fullName;
    _data["is_private"] = isPrivate;
    _data["strong_id__"] = strongId;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    return _data;
  }
}
