.class public final synthetic Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment-$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment-$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment-$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment-$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->$r8$lambda$rWLbRULu-o8ROn0ln8AM7SnGWiA(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/Intent;IJ)V

    return-void
.end method
