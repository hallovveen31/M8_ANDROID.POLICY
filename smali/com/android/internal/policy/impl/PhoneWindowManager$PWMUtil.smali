.class public Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PWMUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 8566
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 8569
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 8571
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 8570
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getKeyguardDelegate()Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .locals 1

    .prologue
    .line 8567
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    return-object v0
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .locals 1

    .prologue
    .line 8568
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method
