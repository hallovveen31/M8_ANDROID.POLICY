.class Lcom/android/internal/policy/impl/PhoneWindowManager$34;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 8381
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 8383
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    .line 8384
    const-string v0, "InputDispatcher"

    const-string v1, "LongPress POWER to show 2key HWReset Indicator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8386
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootCompleted:Z

    if-eqz v0, :cond_2

    .line 8387
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 8388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 8390
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1900()I

    move-result v0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2000()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit16 v8, v0, 0x3e8

    .line 8391
    .local v8, countDownDuration:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "shutdown_hw_reset_notify_text_sense55"

    const-string v2, "string"

    const-string v3, "com.htc.framework"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 8393
    .local v7, hwResetText_55:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "shutdown_hw_reset_notify_text_singular_sense55"

    const-string v2, "string"

    const-string v3, "com.htc.framework"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 8395
    .local v6, hwResetText_singular_55:I
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_1

    .line 8396
    const-string v0, "InputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hwResetText_55="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hwResetText_singular_55="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8398
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$34$1;

    int-to-long v2, v8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$34$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$34;JJII)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$34$1;->start()Landroid/os/CountDownTimer;

    .line 8421
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_2

    .line 8422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 8423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 8424
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_2

    .line 8425
    const-string v0, "InputDispatcher"

    const-string v1, "m2KeyHWResetIndicator.show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8428
    .end local v6           #hwResetText_singular_55:I
    .end local v7           #hwResetText_55:I
    .end local v8           #countDownDuration:I
    :cond_2
    return-void
.end method
