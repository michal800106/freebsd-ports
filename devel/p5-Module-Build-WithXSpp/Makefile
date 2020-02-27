# Created by: Michał Zielonka <zielonka.michal@gmail.com>
# $FreeBSD$

PORTNAME=	Module-Build-WithXSpp
PORTVERSION=	0.14
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	zielonka.michal@gmail.com
COMMENT=	XS++ enhanced flavour of Module::Build

LICENSE=	ART10 GPLv1+
LICENSE_COMB=	dual

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	p5-ExtUtils-CppGuess>=0.21:devel/p5-ExtUtils-CppGuess \
		p5-ExtUtils-XSpp>=0.18:devel/p5-ExtUtils-XSpp

USES=		perl5

NO_ARCH=	yes
USE_PERL5=	modbuild
ALL_TARGET=	build

.include <bsd.port.mk>
