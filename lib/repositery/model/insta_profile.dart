class InstaUser {
  String? status;
  Response? response;

  InstaUser({this.status, this.response});

  InstaUser.fromJson(Map<String, dynamic> json) {
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["response"] is Map) {
      response =
          json["response"] == null ? null : Response.fromJson(json["response"]);
    }
  }

  static List<InstaUser> fromList(List<Map<String, dynamic>> list) {
    return list.map(InstaUser.fromJson).toList();
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
  Data? data;
  String? status;

  Body({this.data, this.status});

  Body.fromJson(Map<String, dynamic> json) {
    if (json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
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
    if (data != null) {
      _data["data"] = data?.toJson();
    }
    _data["status"] = status;
    return _data;
  }
}

class Data {
  User? user;

  Data({this.user});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map(Data.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User {
  dynamic aiAgentType;
  String? biography;
  List<BioLinks>? bioLinks;
  dynamic fbProfileBiolink;
  BiographyWithEntities? biographyWithEntities;
  bool? blockedByViewer;
  bool? restrictedByViewer;
  bool? countryBlock;
  String? eimuId;
  String? externalUrl;
  String? externalUrlLinkshimmed;
  EdgeFollowedBy? edgeFollowedBy;
  String? fbid;
  bool? followedByViewer;
  EdgeFollow? edgeFollow;
  bool? followsViewer;
  String? fullName;
  dynamic groupMetadata;
  bool? hasArEffects;
  bool? hasClips;
  bool? hasGuides;
  bool? hasChaining;
  bool? hasChannel;
  bool? hasBlockedViewer;
  int? highlightReelCount;
  bool? hasRequestedViewer;
  bool? hideLikeAndViewCounts;
  String? id;
  bool? isBusinessAccount;
  bool? isProfessionalAccount;
  bool? isSupervisionEnabled;
  bool? isGuardianOfViewer;
  bool? isSupervisedByViewer;
  bool? isSupervisedUser;
  bool? isEmbedsDisabled;
  bool? isJoinedRecently;
  dynamic guardianId;
  dynamic businessAddressJson;
  String? businessContactMethod;
  dynamic businessEmail;
  dynamic businessPhoneNumber;
  dynamic businessCategoryName;
  dynamic overallCategoryName;
  dynamic categoryEnum;
  String? categoryName;
  bool? isPrivate;
  bool? isVerified;
  bool? isVerifiedByMv4B;
  bool? isRegulatedC18;
  EdgeMutualFollowedBy? edgeMutualFollowedBy;
  int? pinnedChannelsListCount;
  String? profilePicUrl;
  String? profilePicUrlHd;
  bool? requestedByViewer;
  bool? shouldShowCategory;
  bool? shouldShowPublicContacts;
  bool? showAccountTransparencyDetails;
  dynamic transparencyLabel;
  dynamic transparencyProduct;
  String? username;
  dynamic connectedFbPage;
  List<dynamic>? pronouns;
  EdgeOwnerToTimelineMedia? edgeOwnerToTimelineMedia;

  User(
      {this.aiAgentType,
      this.biography,
      this.bioLinks,
      this.fbProfileBiolink,
      this.biographyWithEntities,
      this.blockedByViewer,
      this.restrictedByViewer,
      this.countryBlock,
      this.eimuId,
      this.externalUrl,
      this.externalUrlLinkshimmed,
      this.edgeFollowedBy,
      this.fbid,
      this.followedByViewer,
      this.edgeFollow,
      this.followsViewer,
      this.fullName,
      this.groupMetadata,
      this.hasArEffects,
      this.hasClips,
      this.hasGuides,
      this.hasChaining,
      this.hasChannel,
      this.hasBlockedViewer,
      this.highlightReelCount,
      this.hasRequestedViewer,
      this.hideLikeAndViewCounts,
      this.id,
      this.isBusinessAccount,
      this.isProfessionalAccount,
      this.isSupervisionEnabled,
      this.isGuardianOfViewer,
      this.isSupervisedByViewer,
      this.isSupervisedUser,
      this.isEmbedsDisabled,
      this.isJoinedRecently,
      this.guardianId,
      this.businessAddressJson,
      this.businessContactMethod,
      this.businessEmail,
      this.businessPhoneNumber,
      this.businessCategoryName,
      this.overallCategoryName,
      this.categoryEnum,
      this.categoryName,
      this.isPrivate,
      this.isVerified,
      this.isVerifiedByMv4B,
      this.isRegulatedC18,
      this.edgeMutualFollowedBy,
      this.pinnedChannelsListCount,
      this.profilePicUrl,
      this.profilePicUrlHd,
      this.requestedByViewer,
      this.shouldShowCategory,
      this.shouldShowPublicContacts,
      this.showAccountTransparencyDetails,
      this.transparencyLabel,
      this.transparencyProduct,
      this.username,
      this.connectedFbPage,
      this.pronouns,
      this.edgeOwnerToTimelineMedia});

  User.fromJson(Map<String, dynamic> json) {
    aiAgentType = json["ai_agent_type"];
    if (json["biography"] is String) {
      biography = json["biography"];
    }
    if (json["bio_links"] is List) {
      bioLinks = json["bio_links"] == null
          ? null
          : (json["bio_links"] as List)
              .map((e) => BioLinks.fromJson(e))
              .toList();
    }
    fbProfileBiolink = json["fb_profile_biolink"];
    if (json["biography_with_entities"] is Map) {
      biographyWithEntities = json["biography_with_entities"] == null
          ? null
          : BiographyWithEntities.fromJson(json["biography_with_entities"]);
    }
    if (json["blocked_by_viewer"] is bool) {
      blockedByViewer = json["blocked_by_viewer"];
    }
    if (json["restricted_by_viewer"] is bool) {
      restrictedByViewer = json["restricted_by_viewer"];
    }
    if (json["country_block"] is bool) {
      countryBlock = json["country_block"];
    }
    if (json["eimu_id"] is String) {
      eimuId = json["eimu_id"];
    }
    if (json["external_url"] is String) {
      externalUrl = json["external_url"];
    }
    if (json["external_url_linkshimmed"] is String) {
      externalUrlLinkshimmed = json["external_url_linkshimmed"];
    }
    if (json["edge_followed_by"] is Map) {
      edgeFollowedBy = json["edge_followed_by"] == null
          ? null
          : EdgeFollowedBy.fromJson(json["edge_followed_by"]);
    }
    if (json["fbid"] is String) {
      fbid = json["fbid"];
    }
    if (json["followed_by_viewer"] is bool) {
      followedByViewer = json["followed_by_viewer"];
    }
    if (json["edge_follow"] is Map) {
      edgeFollow = json["edge_follow"] == null
          ? null
          : EdgeFollow.fromJson(json["edge_follow"]);
    }
    if (json["follows_viewer"] is bool) {
      followsViewer = json["follows_viewer"];
    }
    if (json["full_name"] is String) {
      fullName = json["full_name"];
    }
    groupMetadata = json["group_metadata"];
    if (json["has_ar_effects"] is bool) {
      hasArEffects = json["has_ar_effects"];
    }
    if (json["has_clips"] is bool) {
      hasClips = json["has_clips"];
    }
    if (json["has_guides"] is bool) {
      hasGuides = json["has_guides"];
    }
    if (json["has_chaining"] is bool) {
      hasChaining = json["has_chaining"];
    }
    if (json["has_channel"] is bool) {
      hasChannel = json["has_channel"];
    }
    if (json["has_blocked_viewer"] is bool) {
      hasBlockedViewer = json["has_blocked_viewer"];
    }
    if (json["highlight_reel_count"] is int) {
      highlightReelCount = json["highlight_reel_count"];
    }
    if (json["has_requested_viewer"] is bool) {
      hasRequestedViewer = json["has_requested_viewer"];
    }
    if (json["hide_like_and_view_counts"] is bool) {
      hideLikeAndViewCounts = json["hide_like_and_view_counts"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["is_business_account"] is bool) {
      isBusinessAccount = json["is_business_account"];
    }
    if (json["is_professional_account"] is bool) {
      isProfessionalAccount = json["is_professional_account"];
    }
    if (json["is_supervision_enabled"] is bool) {
      isSupervisionEnabled = json["is_supervision_enabled"];
    }
    if (json["is_guardian_of_viewer"] is bool) {
      isGuardianOfViewer = json["is_guardian_of_viewer"];
    }
    if (json["is_supervised_by_viewer"] is bool) {
      isSupervisedByViewer = json["is_supervised_by_viewer"];
    }
    if (json["is_supervised_user"] is bool) {
      isSupervisedUser = json["is_supervised_user"];
    }
    if (json["is_embeds_disabled"] is bool) {
      isEmbedsDisabled = json["is_embeds_disabled"];
    }
    if (json["is_joined_recently"] is bool) {
      isJoinedRecently = json["is_joined_recently"];
    }
    guardianId = json["guardian_id"];
    businessAddressJson = json["business_address_json"];
    if (json["business_contact_method"] is String) {
      businessContactMethod = json["business_contact_method"];
    }
    businessEmail = json["business_email"];
    businessPhoneNumber = json["business_phone_number"];
    businessCategoryName = json["business_category_name"];
    overallCategoryName = json["overall_category_name"];
    categoryEnum = json["category_enum"];
    if (json["category_name"] is String) {
      categoryName = json["category_name"];
    }
    if (json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["is_verified_by_mv4b"] is bool) {
      isVerifiedByMv4B = json["is_verified_by_mv4b"];
    }
    if (json["is_regulated_c18"] is bool) {
      isRegulatedC18 = json["is_regulated_c18"];
    }
    if (json["edge_mutual_followed_by"] is Map) {
      edgeMutualFollowedBy = json["edge_mutual_followed_by"] == null
          ? null
          : EdgeMutualFollowedBy.fromJson(json["edge_mutual_followed_by"]);
    }
    if (json["pinned_channels_list_count"] is int) {
      pinnedChannelsListCount = json["pinned_channels_list_count"];
    }
    if (json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
    if (json["profile_pic_url_hd"] is String) {
      profilePicUrlHd = json["profile_pic_url_hd"];
    }
    if (json["requested_by_viewer"] is bool) {
      requestedByViewer = json["requested_by_viewer"];
    }
    if (json["should_show_category"] is bool) {
      shouldShowCategory = json["should_show_category"];
    }
    if (json["should_show_public_contacts"] is bool) {
      shouldShowPublicContacts = json["should_show_public_contacts"];
    }
    if (json["show_account_transparency_details"] is bool) {
      showAccountTransparencyDetails =
          json["show_account_transparency_details"];
    }
    transparencyLabel = json["transparency_label"];
    transparencyProduct = json["transparency_product"];
    if (json["username"] is String) {
      username = json["username"];
    }
    connectedFbPage = json["connected_fb_page"];
    if (json["pronouns"] is List) {
      pronouns = json["pronouns"] ?? [];
    }
    if (json["edge_owner_to_timeline_media"] is Map) {
      edgeOwnerToTimelineMedia = json["edge_owner_to_timeline_media"] == null
          ? null
          : EdgeOwnerToTimelineMedia.fromJson(
              json["edge_owner_to_timeline_media"]);
    }
  }

  static List<User> fromList(List<Map<String, dynamic>> list) {
    return list.map(User.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ai_agent_type"] = aiAgentType;
    _data["biography"] = biography;
    if (bioLinks != null) {
      _data["bio_links"] = bioLinks?.map((e) => e.toJson()).toList();
    }
    _data["fb_profile_biolink"] = fbProfileBiolink;
    if (biographyWithEntities != null) {
      _data["biography_with_entities"] = biographyWithEntities?.toJson();
    }
    _data["blocked_by_viewer"] = blockedByViewer;
    _data["restricted_by_viewer"] = restrictedByViewer;
    _data["country_block"] = countryBlock;
    _data["eimu_id"] = eimuId;
    _data["external_url"] = externalUrl;
    _data["external_url_linkshimmed"] = externalUrlLinkshimmed;
    if (edgeFollowedBy != null) {
      _data["edge_followed_by"] = edgeFollowedBy?.toJson();
    }
    _data["fbid"] = fbid;
    _data["followed_by_viewer"] = followedByViewer;
    if (edgeFollow != null) {
      _data["edge_follow"] = edgeFollow?.toJson();
    }
    _data["follows_viewer"] = followsViewer;
    _data["full_name"] = fullName;
    _data["group_metadata"] = groupMetadata;
    _data["has_ar_effects"] = hasArEffects;
    _data["has_clips"] = hasClips;
    _data["has_guides"] = hasGuides;
    _data["has_chaining"] = hasChaining;
    _data["has_channel"] = hasChannel;
    _data["has_blocked_viewer"] = hasBlockedViewer;
    _data["highlight_reel_count"] = highlightReelCount;
    _data["has_requested_viewer"] = hasRequestedViewer;
    _data["hide_like_and_view_counts"] = hideLikeAndViewCounts;
    _data["id"] = id;
    _data["is_business_account"] = isBusinessAccount;
    _data["is_professional_account"] = isProfessionalAccount;
    _data["is_supervision_enabled"] = isSupervisionEnabled;
    _data["is_guardian_of_viewer"] = isGuardianOfViewer;
    _data["is_supervised_by_viewer"] = isSupervisedByViewer;
    _data["is_supervised_user"] = isSupervisedUser;
    _data["is_embeds_disabled"] = isEmbedsDisabled;
    _data["is_joined_recently"] = isJoinedRecently;
    _data["guardian_id"] = guardianId;
    _data["business_address_json"] = businessAddressJson;
    _data["business_contact_method"] = businessContactMethod;
    _data["business_email"] = businessEmail;
    _data["business_phone_number"] = businessPhoneNumber;
    _data["business_category_name"] = businessCategoryName;
    _data["overall_category_name"] = overallCategoryName;
    _data["category_enum"] = categoryEnum;
    _data["category_name"] = categoryName;
    _data["is_private"] = isPrivate;
    _data["is_verified"] = isVerified;
    _data["is_verified_by_mv4b"] = isVerifiedByMv4B;
    _data["is_regulated_c18"] = isRegulatedC18;
    if (edgeMutualFollowedBy != null) {
      _data["edge_mutual_followed_by"] = edgeMutualFollowedBy?.toJson();
    }
    _data["pinned_channels_list_count"] = pinnedChannelsListCount;
    _data["profile_pic_url"] = profilePicUrl;
    _data["profile_pic_url_hd"] = profilePicUrlHd;
    _data["requested_by_viewer"] = requestedByViewer;
    _data["should_show_category"] = shouldShowCategory;
    _data["should_show_public_contacts"] = shouldShowPublicContacts;
    _data["show_account_transparency_details"] = showAccountTransparencyDetails;
    _data["transparency_label"] = transparencyLabel;
    _data["transparency_product"] = transparencyProduct;
    _data["username"] = username;
    _data["connected_fb_page"] = connectedFbPage;
    if (pronouns != null) {
      _data["pronouns"] = pronouns;
    }
    if (edgeOwnerToTimelineMedia != null) {
      _data["edge_owner_to_timeline_media"] =
          edgeOwnerToTimelineMedia?.toJson();
    }
    return _data;
  }
}

class EdgeOwnerToTimelineMedia {
  int? count;
  PageInfo? pageInfo;
  List<dynamic>? edges;

  EdgeOwnerToTimelineMedia({this.count, this.pageInfo, this.edges});

  EdgeOwnerToTimelineMedia.fromJson(Map<String, dynamic> json) {
    if (json["count"] is int) {
      count = json["count"];
    }
    if (json["page_info"] is Map) {
      pageInfo = json["page_info"] == null
          ? null
          : PageInfo.fromJson(json["page_info"]);
    }
    if (json["edges"] is List) {
      edges = json["edges"] ?? [];
    }
  }

  static List<EdgeOwnerToTimelineMedia> fromList(
      List<Map<String, dynamic>> list) {
    return list.map(EdgeOwnerToTimelineMedia.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if (pageInfo != null) {
      _data["page_info"] = pageInfo?.toJson();
    }
    if (edges != null) {
      _data["edges"] = edges;
    }
    return _data;
  }
}

class PageInfo {
  bool? hasNextPage;
  String? endCursor;

  PageInfo({this.hasNextPage, this.endCursor});

  PageInfo.fromJson(Map<String, dynamic> json) {
    if (json["has_next_page"] is bool) {
      hasNextPage = json["has_next_page"];
    }
    if (json["end_cursor"] is String) {
      endCursor = json["end_cursor"];
    }
  }

  static List<PageInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(PageInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has_next_page"] = hasNextPage;
    _data["end_cursor"] = endCursor;
    return _data;
  }
}

class EdgeMutualFollowedBy {
  int? count;
  List<dynamic>? edges;

  EdgeMutualFollowedBy({this.count, this.edges});

  EdgeMutualFollowedBy.fromJson(Map<String, dynamic> json) {
    if (json["count"] is int) {
      count = json["count"];
    }
    if (json["edges"] is List) {
      edges = json["edges"] ?? [];
    }
  }

  static List<EdgeMutualFollowedBy> fromList(List<Map<String, dynamic>> list) {
    return list.map(EdgeMutualFollowedBy.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if (edges != null) {
      _data["edges"] = edges;
    }
    return _data;
  }
}

class EdgeFollow {
  int? count;

  EdgeFollow({this.count});

  EdgeFollow.fromJson(Map<String, dynamic> json) {
    if (json["count"] is int) {
      count = json["count"];
    }
  }

  static List<EdgeFollow> fromList(List<Map<String, dynamic>> list) {
    return list.map(EdgeFollow.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    return _data;
  }
}

class EdgeFollowedBy {
  int? count;

  EdgeFollowedBy({this.count});

  EdgeFollowedBy.fromJson(Map<String, dynamic> json) {
    if (json["count"] is int) {
      count = json["count"];
    }
  }

  static List<EdgeFollowedBy> fromList(List<Map<String, dynamic>> list) {
    return list.map(EdgeFollowedBy.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    return _data;
  }
}

class BiographyWithEntities {
  String? rawText;
  List<Entities>? entities;

  BiographyWithEntities({this.rawText, this.entities});

  BiographyWithEntities.fromJson(Map<String, dynamic> json) {
    if (json["raw_text"] is String) {
      rawText = json["raw_text"];
    }
    if (json["entities"] is List) {
      entities = json["entities"] == null
          ? null
          : (json["entities"] as List)
              .map((e) => Entities.fromJson(e))
              .toList();
    }
  }

  static List<BiographyWithEntities> fromList(List<Map<String, dynamic>> list) {
    return list.map(BiographyWithEntities.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["raw_text"] = rawText;
    if (entities != null) {
      _data["entities"] = entities?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Entities {
  User1? user;
  dynamic hashtag;

  Entities({this.user, this.hashtag});

  Entities.fromJson(Map<String, dynamic> json) {
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User1.fromJson(json["user"]);
    }
    hashtag = json["hashtag"];
  }

  static List<Entities> fromList(List<Map<String, dynamic>> list) {
    return list.map(Entities.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    _data["hashtag"] = hashtag;
    return _data;
  }
}

class User1 {
  String? username;

  User1({this.username});

  User1.fromJson(Map<String, dynamic> json) {
    if (json["username"] is String) {
      username = json["username"];
    }
  }

  static List<User1> fromList(List<Map<String, dynamic>> list) {
    return list.map(User1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    return _data;
  }
}

class BioLinks {
  String? title;
  String? lynxUrl;
  String? url;
  String? linkType;

  BioLinks({this.title, this.lynxUrl, this.url, this.linkType});

  BioLinks.fromJson(Map<String, dynamic> json) {
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["lynx_url"] is String) {
      lynxUrl = json["lynx_url"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["link_type"] is String) {
      linkType = json["link_type"];
    }
  }

  static List<BioLinks> fromList(List<Map<String, dynamic>> list) {
    return list.map(BioLinks.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["lynx_url"] = lynxUrl;
    _data["url"] = url;
    _data["link_type"] = linkType;
    return _data;
  }
}
