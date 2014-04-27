.class abstract Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mHtcResource:Z

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 1
    .parameter "enabledIconResId"
    .parameter "disabledIconResid"
    .parameter "message"
    .parameter "enabledStatusMessageResId"
    .parameter "disabledStatusMessageResId"
    .parameter "htcResource"

    .prologue
    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1036
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 1037
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 1038
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    .line 1039
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 1040
    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 1041
    iput-boolean p6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mHtcResource:Z

    .line 1043
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .parameter "buttonOn"

    .prologue
    .line 1184
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1185
    return-void

    .line 1184
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 32
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 1047
    const/16 v27, 0x0

    .line 1049
    .local v27, v:Landroid/view/View;
    const/4 v14, 0x0

    .line 1050
    .local v14, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const/4 v10, 0x0

    .line 1056
    .local v10, description:Lcom/htc/widget/HtcListItem2LineText;
    const v29, 0x3030007

    const/16 v30, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v29

    move-object/from16 v2, p3

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    .line 1057
    const v29, 0x311000d

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    check-cast v14, Lcom/htc/widget/HtcListItemColorIcon;

    .line 1058
    .restart local v14       #icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v29, 0x311000e

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #description:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v10, Lcom/htc/widget/HtcListItem2LineText;

    .line 1062
    .restart local v10       #description:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v12

    .line 1064
    .local v12, enabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_8

    :cond_0
    const/16 v18, 0x1

    .line 1065
    .local v18, on:Z
    :goto_0
    const/16 v17, 0x0

    .line 1066
    .local v17, messageText:Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 1067
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .line 1069
    .local v24, statusText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mHtcResource:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 1070
    const/16 v19, 0x0

    .line 1072
    .local v19, r:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string v30, "com.htc"

    invoke-virtual/range {v29 .. v30}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v19

    .line 1077
    :goto_1
    if-eqz v19, :cond_1

    .line 1078
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 1079
    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    move/from16 v29, v0

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1080
    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    move/from16 v29, v0

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 1093
    .end local v19           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_4
    if-eqz v14, :cond_2

    if-eqz v11, :cond_2

    .line 1094
    invoke-virtual {v14, v11}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    invoke-virtual {v14, v12}, Lcom/htc/widget/HtcListItemColorIcon;->setEnabled(Z)V

    .line 1098
    :cond_2
    if-eqz v10, :cond_4

    .line 1099
    if-eqz v17, :cond_3

    .line 1100
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 1103
    :cond_3
    if-eqz v24, :cond_e

    .line 1104
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 1105
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1110
    :goto_5
    invoke-virtual {v10, v12}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 1114
    :cond_4
    if-eqz v27, :cond_5

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 1117
    :cond_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1119
    .local v5, am:Landroid/app/IActivityManager;
    :try_start_1
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1120
    .local v7, config:Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1122
    .local v23, skinPackage:Ljava/lang/String;
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v8

    .line 1123
    .local v8, custManager:Lcom/htc/customization/HtcCustomizationManager;
    const-string v29, "System"

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v9

    .line 1124
    .local v9, custReader:Lcom/htc/customization/HtcCustomizationReader;
    const-string v29, "sense_version"

    const-string v30, "5.0"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v9, v0, v1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1125
    .local v22, senseV:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    .line 1127
    .local v28, version:F
    const/high16 v29, 0x4080

    cmpl-float v29, v28, v29

    if-ltz v29, :cond_7

    .line 1129
    const-string v29, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string v29, "default"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1130
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1131
    .local v20, res:Landroid/content/res/Resources;
    const-string v29, "common_list_item_background"

    const-string v30, "drawable"

    const-string v31, "com.htc"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1132
    .local v4, BGId:I
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1139
    .end local v20           #res:Landroid/content/res/Resources;
    .local v16, listItemBG:Landroid/graphics/drawable/Drawable;
    :goto_6
    if-eqz v27, :cond_7

    if-eqz v16, :cond_7

    .line 1140
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    .line 1141
    .local v15, leftPadding:I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getPaddingTop()I

    move-result v26

    .line 1142
    .local v26, topPadding:I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    .line 1143
    .local v21, rightPadding:I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 1144
    .local v6, bottomPadding:I
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1145
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1154
    .end local v4           #BGId:I
    .end local v6           #bottomPadding:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v8           #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .end local v9           #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .end local v15           #leftPadding:I
    .end local v16           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v21           #rightPadding:I
    .end local v22           #senseV:Ljava/lang/String;
    .end local v23           #skinPackage:Ljava/lang/String;
    .end local v26           #topPadding:I
    .end local v28           #version:F
    :cond_7
    :goto_7
    return-object v27

    .line 1064
    .end local v5           #am:Landroid/app/IActivityManager;
    .end local v11           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v17           #messageText:Ljava/lang/CharSequence;
    .end local v18           #on:Z
    .end local v24           #statusText:Ljava/lang/CharSequence;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1079
    .restart local v11       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v17       #messageText:Ljava/lang/CharSequence;
    .restart local v18       #on:Z
    .restart local v19       #r:Landroid/content/res/Resources;
    .restart local v24       #statusText:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    move/from16 v29, v0

    goto/16 :goto_2

    .line 1080
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    move/from16 v29, v0

    goto/16 :goto_3

    .line 1083
    .end local v19           #r:Landroid/content/res/Resources;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 1085
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    move/from16 v29, v0

    :goto_8
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 1089
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    move/from16 v29, v0

    :goto_a
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    goto/16 :goto_4

    .line 1085
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    move/from16 v29, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    .line 1086
    :catch_0
    move-exception v13

    .line 1087
    .local v13, ex:Ljava/lang/Exception;
    const-string v29, "GlobalActions"

    const-string v30, "Icon does not exist"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1089
    .end local v13           #ex:Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    move/from16 v29, v0

    goto :goto_a

    .line 1107
    :cond_e
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto/16 :goto_5

    .line 1134
    .restart local v5       #am:Landroid/app/IActivityManager;
    .restart local v7       #config:Landroid/content/res/Configuration;
    .restart local v8       #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .restart local v9       #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .restart local v22       #senseV:Ljava/lang/String;
    .restart local v23       #skinPackage:Ljava/lang/String;
    .restart local v28       #version:F
    :cond_f
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v25

    .line 1135
    .local v25, themeres:Landroid/content/res/Resources;
    const-string v29, "common_list_item_background"

    const-string v30, "drawable"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1136
    .restart local v4       #BGId:I
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v16

    .restart local v16       #listItemBG:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    .line 1149
    .end local v4           #BGId:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v8           #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .end local v9           #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .end local v16           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v22           #senseV:Ljava/lang/String;
    .end local v23           #skinPackage:Ljava/lang/String;
    .end local v25           #themeres:Landroid/content/res/Resources;
    .end local v28           #version:F
    :catch_1
    move-exception v29

    goto/16 :goto_7

    .line 1073
    .end local v5           #am:Landroid/app/IActivityManager;
    .restart local v19       #r:Landroid/content/res/Resources;
    :catch_2
    move-exception v29

    goto/16 :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1170
    const/4 v0, 0x0

    return v0
.end method

.method public final onPress()V
    .locals 4

    .prologue
    .line 1158
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPress(), mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inTransition() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1165
    .local v0, nowOn:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 1166
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 1164
    .end local v0           #nowOn:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1191
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_0
    return-void
.end method
