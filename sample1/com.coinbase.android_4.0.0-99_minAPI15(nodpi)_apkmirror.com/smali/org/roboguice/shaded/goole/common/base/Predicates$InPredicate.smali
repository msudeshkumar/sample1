.class Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/roboguice/shaded/goole/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/roboguice/shaded/goole/common/base/Predicate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final target:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate<TT;>;"
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    .line 492
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/base/Predicates$1;

    .prologue
    .line 487
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate<TT;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 497
    :try_start_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 501
    :goto_0
    return v1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 500
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 506
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate<TT;>;"
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 507
    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;

    .line 508
    .local v0, "that":Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate<*>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    iget-object v2, v0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 510
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 514
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;, "Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;->target:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method