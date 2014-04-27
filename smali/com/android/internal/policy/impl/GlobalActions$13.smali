.class Lcom/android/internal/policy/impl/GlobalActions$13;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->confirmKidMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$on:Z

.field final synthetic val$warning_check:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;ZLcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->val$on:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->val$warning_check:Lcom/htc/widget/HtcCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->val$on:Z

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->enter_leave_KidMode(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2600(Lcom/android/internal/policy/impl/GlobalActions;Z)V

    .line 1773
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->val$warning_check:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kidmode_dg_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1776
    :cond_0
    return-void
.end method
