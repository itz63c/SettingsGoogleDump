.class public final synthetic Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction-$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction-$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;->onChallengeGenerated(IJ)V

    return-void
.end method
