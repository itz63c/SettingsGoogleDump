.class final Lcom/google/android/libraries/hats20/view/QuestionMetrics$1;
.super Ljava/lang/Object;
.source "QuestionMetrics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/view/QuestionMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/libraries/hats20/view/QuestionMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/libraries/hats20/view/QuestionMetrics;
    .locals 1

    .line 107
    new-instance p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/view/QuestionMetrics$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/libraries/hats20/view/QuestionMetrics;
    .locals 0

    .line 112
    new-array p0, p1, [Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics$1;->newArray(I)[Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    move-result-object p0

    return-object p0
.end method
