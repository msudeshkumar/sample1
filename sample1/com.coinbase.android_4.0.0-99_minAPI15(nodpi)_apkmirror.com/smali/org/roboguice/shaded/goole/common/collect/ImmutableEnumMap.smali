.class final Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
.source "ImmutableEnumMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient delegate:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    .line 54
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;
    .locals 1
    .param p0, "x0"    # Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    return-object v0
.end method

.method static asImmutable(Ljava/util/EnumMap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/EnumMap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 46
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    invoke-direct {v1, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;-><init>(Ljava/util/EnumMap;)V

    :goto_0
    return-object v1

    .line 40
    :pswitch_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v1

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;)V

    return-object v0
.end method

.method createKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method