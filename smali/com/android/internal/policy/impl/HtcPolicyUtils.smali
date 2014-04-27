.class Lcom/android/internal/policy/impl/HtcPolicyUtils;
.super Ljava/lang/Object;
.source "HtcPolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcPolicyUtils$LogKeyCodeHandle;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field static final TAG:Ljava/lang/String; = "HtcPolicyUtils"

.field static final TAG_PREFIX:Ljava/lang/String; = "HtcPolicyUtils-"


# instance fields
.field public logKeyCodeHandle:Lcom/android/internal/policy/impl/HtcPolicyUtils$LogKeyCodeHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->DEBUG_ON:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/impl/HtcPolicyUtils$LogKeyCodeHandle;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$LogKeyCodeHandle;-><init>(Lcom/android/internal/policy/impl/HtcPolicyUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->logKeyCodeHandle:Lcom/android/internal/policy/impl/HtcPolicyUtils$LogKeyCodeHandle;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->DEBUG_ON:Z

    return v0
.end method
