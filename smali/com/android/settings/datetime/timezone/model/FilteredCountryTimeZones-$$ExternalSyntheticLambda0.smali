.class public final synthetic Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones-$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones-$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones-$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones-$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->$r8$lambda$HE8wJL4EewbN0s9w4L6b3nt-6Jk(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
