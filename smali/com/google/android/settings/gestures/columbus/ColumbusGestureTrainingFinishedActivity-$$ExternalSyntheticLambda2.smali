.class public final synthetic Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity-$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity-$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity-$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->showIndicator()V

    return-void
.end method
