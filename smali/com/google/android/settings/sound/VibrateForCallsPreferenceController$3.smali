.class Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$3;
.super Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;
.source "VibrateForCallsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$3;->this$0:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;

    invoke-direct {p0, p2}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$3;->this$0:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;

    invoke-static {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->access$100(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;)V

    return-void
.end method
