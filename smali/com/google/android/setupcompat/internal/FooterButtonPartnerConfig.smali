.class public Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
.super Ljava/lang/Object;
.source "FooterButtonPartnerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    }
.end annotation


# instance fields
.field private final buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final partnerTheme:I


# direct methods
.method private constructor <init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->partnerTheme:I

    .line 50
    iput-object p6, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 51
    iput-object p7, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 52
    iput-object p8, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 53
    iput-object p9, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 54
    iput-object p2, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 55
    iput-object p3, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 56
    iput-object p4, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 57
    iput-object p10, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 58
    iput-object p5, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 59
    iput-object p11, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p11}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;-><init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    return-void
.end method


# virtual methods
.method public getButtonBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonDisableAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonDisableBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonIconConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonMinHeightConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonRadiusConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonRippleColorAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonTextTypeFaceConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getPartnerTheme()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->partnerTheme:I

    return p0
.end method
