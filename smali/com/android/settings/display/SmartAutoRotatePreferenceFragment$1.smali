.class Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "SmartAutoRotatePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->access$000(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)Lcom/android/settings/display/AutoRotateSwitchBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/display/AutoRotateSwitchBarController;->onChange()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    const-string v2, "face_based_rotate"

    invoke-virtual {v1, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/display/SmartAutoRotateController;->hasSufficientPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    xor-int/lit8 p0, v0, 0x1

    .line 89
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
