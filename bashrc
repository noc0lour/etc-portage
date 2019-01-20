if [[ ${FEATURES} == *ccache* && ${EBUILD_PHASE_FUNC} == src_* ]]; then
	if [[ ${CCACHE_DIR} == /var/cache/ccache ]]; then
		export CCACHE_DIR=/var/cache/ccache/${CATEGORY}/${PN}:${SLOT}
		mkdir -p "${CCACHE_DIR}" || die
	fi
fi
