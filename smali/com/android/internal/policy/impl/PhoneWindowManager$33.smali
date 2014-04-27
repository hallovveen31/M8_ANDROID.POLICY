.class Lcom/android/internal/policy/impl/PhoneWindowManager$33;
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
    .line 8355
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 8357
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_0

    .line 8358
    const-string v1, "InputDispatcher"

    const-string v2, "LongPress POWER to show 2key HWReset hint"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8360
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootCompleted:Z

    if-eqz v1, :cond_2

    .line 8361
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 8362
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 8364
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "shutdown_hw_reset_hint_text_sense55"

    const-string v3, "string"

    const-string v4, "com.htc.framework"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 8366
    .local v0, hwResetTextHint:I
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_1

    .line 8367
    const-string v1, "InputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hwResetTextHint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8369
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 8370
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/htc/app/HtcProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8371
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 8372
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 8373
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_2

    .line 8374
    const-string v1, "InputDispatcher"

    const-string v2, "m2KeyHWResetHint.show"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8377
    .end local v0           #hwResetTextHint:I
    :cond_2
    return-void
.end method
