.class Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$3;
.super Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;
.source "VibrationTogglePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;Landroid/content/Context;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$3;->this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;

    invoke-direct {p0, p2}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$3;->this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->access$200(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$3;->this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;

    iget-object v0, v0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$3;->this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->setIntensityFromPrimarySwitchTriggerReason()V

    :cond_0
    return-void
.end method
