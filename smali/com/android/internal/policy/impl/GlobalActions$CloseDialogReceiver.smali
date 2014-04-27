.class Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field private ct:Landroid/content/Context;

.field public dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1822
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1823
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;->ct:Landroid/content/Context;

    .line 1824
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;->ct:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1826
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "unused"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;->ct:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1835
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1831
    return-void
.end method
