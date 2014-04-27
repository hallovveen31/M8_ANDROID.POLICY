.class public Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z = false

.field private static final PREVENT_REDIAL_FLAGS:I = 0x28

.field private static final SHAREKEY_LONG_PRESS_ACTIVITY:Ljava/lang/String;

.field private static final SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String;

.field private static final SHAREKEY_LONG_PRESS_PACKAGE:Ljava/lang/String;

.field private static final SHAREKEY_SHORT_PRESS_ACTIVITY:Ljava/lang/String;

.field private static final SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String;

.field private static final SHAREKEY_SHORT_PRESS_PACKAGE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field private mCameraInterntBroadcasted:Z

.field mContext:Landroid/content/Context;

.field private final mIsDisableOobe:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyShortPressPackage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_PACKAGE:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyShortPressActivity()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_ACTIVITY:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyShortPressIntentAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyLongPressPackage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_PACKAGE:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyLongPressActivity()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_ACTIVITY:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyLongPressIntentAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraInterntBroadcasted:Z

    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getOobeStatus(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    .line 78
    return-void
.end method

.method private getOobeStatus(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 393
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.htc.android.htcsetupwizard"

    const-string v5, "com.htc.android.htcsetupwizard.MainActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .local v2, oobe:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 402
    .local v3, oobeStatus:I
    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    .line 403
    .local v1, isDisable:Z
    :goto_0
    if-nez v1, :cond_0

    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OOBE is enable, sharekey will be skipped. OOBE pkg status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v1           #isDisable:Z
    .end local v3           #oobeStatus:I
    :cond_0
    :goto_1
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Can not find OOBE !!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #oobeStatus:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    .line 437
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 439
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 441
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to find IAudioService for media key event."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleShareKeyIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "action"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "flags"

    .prologue
    .line 413
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 414
    .local v1, intent:Landroid/content/Intent;
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 418
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 420
    :cond_2
    invoke-virtual {v1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    :try_start_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_3

    .line 423
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling sharekey Intent - package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flag:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was caught while handling sharekey Intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isOobeDisabled()Z
    .locals 2

    .prologue
    .line 408
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "OOBE is enable, sharekey will be skipped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 91
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 93
    .local v1, keyCode:I
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 96
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v4, 0x1000

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v10

    .line 107
    .local v10, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return v6

    .line 112
    :sswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<VOLUME> Handle volume key by audio manager in PhoneFallbackEventHandler.java, keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v2, -0x8000

    invoke-virtual {v0, p2, v2}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    move v6, v12

    .line 115
    goto :goto_0

    .line 124
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    move v6, v12

    .line 125
    goto :goto_0

    .line 136
    :cond_1
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v6, v12

    .line 137
    goto :goto_0

    .line 141
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 145
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    move v6, v12

    .line 159
    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v11

    .line 156
    .local v11, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    .line 167
    .end local v1           #intent:Landroid/content/Intent;
    .end local v11           #e:Landroid/content/ActivityNotFoundException;
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 170
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 171
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    move v6, v12

    .line 198
    goto/16 :goto_0

    .line 172
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 175
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraInterntBroadcasted:Z

    if-nez v0, :cond_6

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 179
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraInterntBroadcasted:Z

    .line 182
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 186
    const/4 v1, 0x0

    .line 187
    .restart local v1       #intent:Landroid/content/Intent;
    const/16 v0, 0x2339

    if-ne p1, v0, :cond_7

    .line 188
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v0, "com.htc.intent.action.CAMCORDER_BUTTON"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_3
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 190
    :cond_7
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 202
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 205
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 206
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 207
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 209
    .local v9, config:Landroid/content/res/Configuration;
    iget v0, v9, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v12, :cond_9

    iget v0, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 212
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v12

    .line 223
    goto/16 :goto_0

    .line 232
    .end local v1           #intent:Landroid/content/Intent;
    .end local v9           #config:Landroid/content/res/Configuration;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 235
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 236
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :goto_4
    move v6, v12

    .line 250
    goto/16 :goto_0

    .line 238
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 240
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    if-eqz v0, :cond_d

    .line 241
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "Handle sharekey long press"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_PACKAGE:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_ACTIVITY:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleShareKeyIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    :cond_c
    :goto_5
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    goto :goto_4

    .line 245
    :cond_d
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "OOBE is enabled, long press for sharekey will be skipped"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 224
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v9       #config:Landroid/content/res/Configuration;
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_4
        0x4f -> :sswitch_2
        0x54 -> :sswitch_5
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
        0x2338 -> :sswitch_6
        0x2339 -> :sswitch_4
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 260
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 261
    .local v1, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 265
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    move v2, v3

    .line 344
    :cond_2
    :goto_0
    return v2

    .line 269
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 270
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 272
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    const/high16 v4, -0x8000

    invoke-virtual {v3, p2, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 281
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x28

    const/16 v4, 0x28

    if-ne v3, v4, :cond_3

    .line 282
    sget-object v3, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "KeyCode is Headsethook and KeyFlag is canceled, not sending intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_3
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 306
    :sswitch_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraInterntBroadcasted:Z

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 311
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 318
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 321
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_0

    .line 329
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 332
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 333
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    if-eqz v3, :cond_5

    .line 334
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "Handle sharekey short press"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_PACKAGE:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_ACTIVITY:Ljava/lang/String;

    const/high16 v6, 0x1000

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleShareKeyIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 338
    :cond_5
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "OOBE is enabled, short press for sharekey will be skipped"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
        0x2338 -> :sswitch_5
        0x2339 -> :sswitch_3
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 86
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 82
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
