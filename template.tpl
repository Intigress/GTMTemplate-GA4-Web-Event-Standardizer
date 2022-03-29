// Copyright 2022 Intigress LLC

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     https://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___

{
  "displayName": "GA4 Web Event Standardizer",
  "description": "Build Automatic, Recommended or Custom GA4 Events \u0026 add event parameters or user properties to each one. Easily follow Google\u0027s naming conventions per their documentation.\n\nContact: info@intigress.com",
  "categories": ["ADVERTISING","ANALYTICS","CONVERSIONS","MARKETING"],
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "",
    "displayName": "Intigress",
    "id": "github.com_intigress"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "setup",
    "displayName": "Tag Setup",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "measurementId",
        "displayName": "Measurement ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "GA_TRACKING_ID",
            "errorMessage": "Tracking ID must be in the form G-XXXXXXXXX"
          }
        ],
        "help": "Your \u003ca href\u003d\"https://support.google.com/analytics/answer/9539598?hl\u003den#:~:text\u003dI%20find%20my-,Measurement%20ID,-(i.e.%20%22G\"\u003eGA4 Measurement ID\u003c/a\u003e can be found under Admin \u003e Data Streams \u003e click into Web stream.\u003cbr\u003e\nNo page_view will be sent with this event.",
        "notSetText": "GA4 Measurement ID is required.",
        "valueHint": "G-XXXXXXXXXX"
      },
      {
        "type": "CHECKBOX",
        "name": "sendPageView",
        "checkboxText": "Send page_view event",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "If you would like, you can also send a new page_view in addition to this event when this tag fires. This is off by default."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "eventName",
    "displayName": "GA4 Event",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "RADIO",
        "name": "eventType",
        "displayName": "Choose Event Type",
        "radioItems": [
          {
            "value": "automatic",
            "displayValue": "Automatic Event"
          },
          {
            "value": "recommended",
            "displayValue": "Recommended Event"
          },
          {
            "value": "custom",
            "displayValue": "Custom Event"
          }
        ],
        "simpleValueType": true
      },
      {
        "type": "SELECT",
        "name": "automaticEvent",
        "displayName": "Select Automatic Event",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "click",
            "displayValue": "click"
          },
          {
            "value": "file_download",
            "displayValue": "file_download"
          },
          {
            "value": "scroll",
            "displayValue": "scroll"
          },
          {
            "value": "user_engagement",
            "displayValue": "user_engagement"
          },
          {
            "value": "video_start",
            "displayValue": "video_start"
          },
          {
            "value": "video_progress",
            "displayValue": "video_progress"
          },
          {
            "value": "video_complete",
            "displayValue": "video_complete"
          },
          {
            "value": "view_search_result",
            "displayValue": "view_search_result"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "automatic",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "recommendedEvent",
        "displayName": "Select Recommended Event",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "ad_impression",
            "displayValue": "ad_impression"
          },
          {
            "value": "generate_lead",
            "displayValue": "generate_lead"
          },
          {
            "value": "join_group",
            "displayValue": "join_group"
          },
          {
            "value": "login",
            "displayValue": "login"
          },
          {
            "value": "search",
            "displayValue": "search"
          },
          {
            "value": "select_content",
            "displayValue": "select_content"
          },
          {
            "value": "share",
            "displayValue": "share"
          },
          {
            "value": "sign_up",
            "displayValue": "sign_up"
          },
          {
            "value": "ecommerce_add_payment_info",
            "displayValue": "add_payment_info"
          },
          {
            "value": "ecommerce_add_shipping_info",
            "displayValue": "add_shipping_info"
          },
          {
            "value": "ecommerce_add_to_cart",
            "displayValue": "add_to_cart"
          },
          {
            "value": "ecommerce_add_to_wishlist",
            "displayValue": "add_to_wishlist"
          },
          {
            "value": "ecommerce_begin_checkout",
            "displayValue": "begin_checkout"
          },
          {
            "value": "ecommerce_purchase",
            "displayValue": "purchase"
          },
          {
            "value": "ecommerce_refund",
            "displayValue": "refund"
          },
          {
            "value": "ecommerce_remove_from_cart",
            "displayValue": "remove_from_cart"
          },
          {
            "value": "ecommerce_select_item",
            "displayValue": "select_item"
          },
          {
            "value": "ecommerce_select_promotion",
            "displayValue": "select_promotion"
          },
          {
            "value": "ecommerce_view_cart",
            "displayValue": "view_cart"
          },
          {
            "value": "ecommerce_view_item",
            "displayValue": "view_item"
          },
          {
            "value": "ecommerce_view_item_list",
            "displayValue": "view_item_list"
          },
          {
            "value": "ecommerce_view_promotion",
            "displayValue": "view_promotion"
          },
          {
            "value": "earn_virtual_currency",
            "displayValue": "earn_virtual_currency"
          },
          {
            "value": "level_start",
            "displayValue": "level_start"
          },
          {
            "value": "level_end",
            "displayValue": "level_end"
          },
          {
            "value": "level_up",
            "displayValue": "level_up"
          },
          {
            "value": "post_score",
            "displayValue": "post_score"
          },
          {
            "value": "spend_virtual_currency",
            "displayValue": "spend_virtual_currency"
          },
          {
            "value": "tutorial_begin",
            "displayValue": "tutorial_begin"
          },
          {
            "value": "tutorial_complete",
            "displayValue": "tutorial_complete"
          },
          {
            "value": "unlock_achievement",
            "displayValue": "unlock_achievement"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "recommended",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "customEvent",
        "displayName": "Custom Event Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "custom",
            "type": "EQUALS"
          }
        ]
      }
    ],
    "help": "Select an \u003ca href\u003d\"https://support.google.com/analytics/answer/9322688?hl\u003den\"\u003eevent type\u003c/a\u003e, event name, and use recommended or custom parameters to maximize the available detail in GA4 reports."
  },
  {
    "type": "GROUP",
    "name": "allParameters",
    "displayName": "Additional Parameters",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "items",
        "displayName": "items Array",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_add_payment_info",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_add_shipping_info",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_add_to_cart",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_add_to_wishlist",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_begin_checkout",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_purchase",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_refund",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_remove_from_cart",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_select_item",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_select_promotion",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_view_cart",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_view_item",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_view_item_list",
            "type": "EQUALS"
          },
          {
            "paramName": "recommendedEvent",
            "paramValue": "ecommerce_view_promotion",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "automaticEventParams",
        "displayName": "",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "SIMPLE_TABLE",
            "name": "click",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "link_classes",
                    "displayValue": "link_classes"
                  },
                  {
                    "value": "link_domain",
                    "displayValue": "link_domain"
                  },
                  {
                    "value": "link_id",
                    "displayValue": "link_id"
                  },
                  {
                    "value": "link_url",
                    "displayValue": "link_url"
                  },
                  {
                    "value": "outbound",
                    "displayValue": "outbound"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "automaticEvent",
                "paramValue": "click",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "file_download",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "file_extension",
                    "displayValue": "file_extension"
                  },
                  {
                    "value": "file_name",
                    "displayValue": "file_name"
                  },
                  {
                    "value": "link_classes",
                    "displayValue": "link_classes"
                  },
                  {
                    "value": "link_domain",
                    "displayValue": "link_domain"
                  },
                  {
                    "value": "link_id",
                    "displayValue": "link_id"
                  },
                  {
                    "value": "link_text",
                    "displayValue": "link_text"
                  },
                  {
                    "value": "link_url",
                    "displayValue": "link_url"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "automaticEvent",
                "paramValue": "file_download",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "scroll",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "engagement_time_msec",
                    "displayValue": "engagement_time_msec"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "automaticEvent",
                "paramValue": "scroll",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "user_engagement",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "engagement_time_msec",
                    "displayValue": "engagement_time_msec"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "automaticEvent",
                "paramValue": "user_engagement",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "video_start",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "video_current_time",
                    "displayValue": "video_current_time"
                  },
                  {
                    "value": "video_duration",
                    "displayValue": "video_duration"
                  },
                  {
                    "value": "video_percent",
                    "displayValue": "video_percent"
                  },
                  {
                    "value": "video_provider",
                    "displayValue": "video_provider"
                  },
                  {
                    "value": "video_title",
                    "displayValue": "video_title"
                  },
                  {
                    "value": "video_url",
                    "displayValue": "video_url"
                  },
                  {
                    "value": "visible",
                    "displayValue": "visible"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "automaticEvent",
                "paramValue": "video_start",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "video_rogress",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "video_current_time",
                    "displayValue": "video_current_time"
                  },
                  {
                    "value": "video_duration",
                    "displayValue": "video_duration"
                  },
                  {
                    "value": "video_percent",
                    "displayValue": "video_percent"
                  },
                  {
                    "value": "video_provider",
                    "displayValue": "video_provider"
                  },
                  {
                    "value": "video_title",
                    "displayValue": "video_title"
                  },
                  {
                    "value": "video_url",
                    "displayValue": "video_url"
                  },
                  {
                    "value": "visible",
                    "displayValue": "visible"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "automaticEvent",
                "paramValue": "video_progress",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "video_complete",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "video_current_time",
                    "displayValue": "video_current_time"
                  },
                  {
                    "value": "video_duration",
                    "displayValue": "video_duration"
                  },
                  {
                    "value": "video_percent",
                    "displayValue": "video_percent"
                  },
                  {
                    "value": "video_provider",
                    "displayValue": "video_provider"
                  },
                  {
                    "value": "video_title",
                    "displayValue": "video_title"
                  },
                  {
                    "value": "video_url",
                    "displayValue": "video_url"
                  },
                  {
                    "value": "visible",
                    "displayValue": "visible"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "automaticEvent",
                "paramValue": "video_complete",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "view_search_results",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "search_term",
                    "displayValue": "search_term"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "automaticEvent",
                "paramValue": "view_search_results",
                "type": "EQUALS"
              }
            ]
          }
        ],
        "help": "Select from a list of recommend \u003ca href\u003d\"https://support.google.com/analytics/answer/9234069?hl\u003den\"\u003eparameters\u003c/a\u003e for Automatic Events.",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "automatic",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "recommendedEventParams",
        "displayName": "",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "SIMPLE_TABLE",
            "name": "generate_lead",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "generate_lead",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "join_group",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "group_id",
                    "displayValue": "group_id"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "join_group",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "login",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "method",
                    "displayValue": "method"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "login",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "search",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "search_term",
                    "displayValue": "search_term"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "search",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "select_content",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "content_type",
                    "displayValue": "content_type"
                  },
                  {
                    "value": "item_id",
                    "displayValue": "item_id"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "select_content",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "share",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "method",
                    "displayValue": "method"
                  },
                  {
                    "value": "content_type",
                    "displayValue": "content_type"
                  },
                  {
                    "value": "item_id",
                    "displayValue": "item_id"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "share",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "sign_up",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "method",
                    "displayValue": "method"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "sign_up",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_add_payment_info",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  },
                  {
                    "value": "coupon",
                    "displayValue": "coupon"
                  },
                  {
                    "value": "payment_type",
                    "displayValue": "payment_type"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_add_payment_info",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_add_shipping_info",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  },
                  {
                    "value": "coupon",
                    "displayValue": "coupon"
                  },
                  {
                    "value": "shipping_tier",
                    "displayValue": "shipping_tier"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_add_shipping_info",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_add_to_cart",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_add_to_cart",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_add_to_wishlist",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_add_to_wishlist",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_begin_checkout",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  },
                  {
                    "value": "coupon",
                    "displayValue": "coupon"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_begin_checkout",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_purchase",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "transaction_id",
                    "displayValue": "transaction_id"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  },
                  {
                    "value": "coupon",
                    "displayValue": "coupon"
                  },
                  {
                    "value": "affiliation",
                    "displayValue": "affiliation"
                  },
                  {
                    "value": "coupon",
                    "displayValue": "coupon"
                  },
                  {
                    "value": "shipping",
                    "displayValue": "shipping"
                  },
                  {
                    "value": "tax",
                    "displayValue": "tax"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_purchase",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_refund",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "transaction_id",
                    "displayValue": "transaction_id"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  },
                  {
                    "value": "coupon",
                    "displayValue": "coupon"
                  },
                  {
                    "value": "affiliation",
                    "displayValue": "affiliation"
                  },
                  {
                    "value": "coupon",
                    "displayValue": "coupon"
                  },
                  {
                    "value": "shipping",
                    "displayValue": "shipping"
                  },
                  {
                    "value": "tax",
                    "displayValue": "tax"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_refund",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_remove_from_cart",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_remove_from_cart",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_select_item",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "item_list_id",
                    "displayValue": "item_list_id"
                  },
                  {
                    "value": "item_list_name",
                    "displayValue": "item_list_name"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_select_item",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_select_promotion",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "creative_name",
                    "displayValue": "creative_name"
                  },
                  {
                    "value": "creative_slot",
                    "displayValue": "creative_slot"
                  },
                  {
                    "value": "location_id",
                    "displayValue": "location_id"
                  },
                  {
                    "value": "promotion_id",
                    "displayValue": "promotion_id"
                  },
                  {
                    "value": "promotion_name",
                    "displayValue": "promotion_name"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_select_promotion",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_view_cart",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_view_cart",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_view_item",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "currency",
                    "displayValue": "currency"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_view_item",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_view_item_list",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "item_list_id",
                    "displayValue": "item_list_id"
                  },
                  {
                    "value": "item_list_name",
                    "displayValue": "item_list_name"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_view_item_list",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "ecommerce_view_promotion",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "creative_name",
                    "displayValue": "creative_name"
                  },
                  {
                    "value": "creative_slot",
                    "displayValue": "creative_slot"
                  },
                  {
                    "value": "location_id",
                    "displayValue": "location_id"
                  },
                  {
                    "value": "promotion_id",
                    "displayValue": "promotion_id"
                  },
                  {
                    "value": "promotion_name",
                    "displayValue": "promotion_name"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "ecommerce_select_promotion",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "earn_virtual_currency",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "virtual_currency_name",
                    "displayValue": "virtual_currency_name"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT",
                "selectItems": []
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "earn_virtual_currency",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "spend_virtual_currency",
            "displayName": "Recommended Parameters",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "key",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "item_name",
                    "displayValue": "item_name"
                  },
                  {
                    "value": "virtual_currency_name",
                    "displayValue": "virtual_currency_name"
                  },
                  {
                    "value": "value",
                    "displayValue": "value"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT",
                "selectItems": []
              }
            ],
            "enablingConditions": [
              {
                "paramName": "recommendedEvent",
                "paramValue": "spend_virtual_currency",
                "type": "EQUALS"
              }
            ]
          }
        ],
        "help": "Select from a list of recommend \u003ca href\u003d\"https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events?hl\u003den\"\u003eparameters\u003c/a\u003e for Recommended Events.",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "recommended",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "custom_parameters",
        "displayName": "Custom Parameters",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "TEXT",
            "selectItems": []
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "help": "Use \u003ca href\u003d\"https://support.google.com/analytics/answer/10075209\"\u003eCustom Parameters\u003c/a\u003e to send additional information that doesn\u0027t belong in a recommended parameter. You\u0027ll also have to register it in the GA4 user interface.",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "",
            "type": "PRESENT"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "user_properties",
        "displayName": "User properties",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "TEXT",
            "selectItems": [],
            "valueValidators": []
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": [],
            "valueValidators": []
          }
        ],
        "help": "Send additional User Properties along with your event besides the \u003ca href\u003d\"https://support.google.com/analytics/answer/9268042\"\u003epredefined user properties\u003c/a\u003e that are automaticlly collected.\nUser properties are attributes assigned to the user-level and can be used to segment your traffic. All Events automatically inherit User Properties set at the page_view event unless explicitly indicate for each Event.",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "",
            "type": "PRESENT"
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const makeTableMap = require('makeTableMap');
const query = require('queryPermission');
const createQueue = require('createQueue');
const createArgumentsQueue = require('createArgumentsQueue');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const injectScript = require('injectScript');
const getTimestampMillis = require('getTimestampMillis');
const encodeUriComponent = require('encodeUriComponent');
const eventType = data.eventType;
const eventParams = data.eventName;
const measurementId = data.measurementId;
const items = data.items;
//const send_page_view = data.sendPageView;
let event_name = {};
//let parameters = data[event_name] ? makeTableMap(data[event_name], 'key', 'value') : undefined;
let custom_parameters = data.custom_parameters ? makeTableMap(data.custom_parameters, 'key', 'value') : undefined;
let user_properties = data.user_properties ? makeTableMap(data.user_properties, 'key', 'value') : undefined;

//Initiate gtag
let gtag = copyFromWindow('gtag');
if(!gtag){
  gtag = createArgumentsQueue('gtag', 'dataLayer');
  injectScript('https://www.googletagmanager.com/gtag/js?id='+encodeUriComponent(measurementId), data.gtmOnSuccess, data.gtmOnFailure, 'gtag');
  
  //Set timestamp
  gtag('js', getTimestampMillis());
}

//Set Measurement ID
gtag('config', measurementId, {
  send_page_view: data.sendPageView
});

//Set User Properties
if(user_properties){
  gtag('set', 'user_properties', user_properties);
}

//Build parameters array map
switch(eventType) {
  case 'automatic':
    event_name = data.automaticEvent;
    var parameters = data[event_name] ? makeTableMap(data[event_name], 'key', 'value') : undefined;
    break;
  case 'recommended':
    event_name = data.recommendedEvent;
    var parameters = data[event_name] ? makeTableMap(data[event_name], 'key', 'value') : undefined;
    break;
  default:
    event_name = data.customEvent;
}

//Combine standard parameters and custom parameters into an array
if(custom_parameters){
  if(parameters){
    var tmp = {};
  
    for(var key in parameters){
      custom_parameters[key] = parameters[key];
    }
  } 
  parameters = custom_parameters;
}

//Strip ecommerce_ from field names
if(0 <= event_name.search("ecommerce_")){
  var ev = event_name.split("ecommerce_")[1];
  var ecommerce = parameters ? parameters : {};
  //Add items array to parameters array
  ecommerce.items = items;
  
  ecommerce.send_to = measurementId;
  gtag('event', ev, ecommerce);
  
} else{
  var dL = {};
  //Add Event Name & Parameters to dataLayer
  dL.event = event_name;
  dL.parameters = parameters;
  
  if(!parameters){
    parameters = {};
  }
  
  parameters.send_to = measurementId;
  
  //Send Event
  gtag('event', event_name, parameters);
}

/*
let final_event_name = ev||event_name;
log('Event Name =', final_event_name);
log('Paramters =', parameters);
*/

// Call data.gtmOnSuccess when the tag is finished.
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "gtag"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.googletagmanager.com/gtag/js?id\u003d*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Quick Test
  code: runCode();
setup: aewtawet


___NOTES___

Created on 03/29/2022, 1:49:37 PM
