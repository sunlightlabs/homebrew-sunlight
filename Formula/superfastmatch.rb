require 'formula'

class Superfastmatch < Formula
  homepage 'https://github.com/mediastandardstrust/superfastmatch/'
  head 'https://github.com/mediastandardstrust/superfastmatch.git'
  # url 'https://github.com/mediastandardstrust/superfastmatch/tarball/master'
  # sha1 'c42cfa9199758eeffefff539c5eddb8871f329fc'

  depends_on 're2' #

  depends_on 'gflags'
  depends_on 'google-perftools'
  depends_on 'ctemplate'
  depends_on 'google-sparsehash'
  depends_on 'kyoto-cabinet'
  depends_on 'kyoto-tycoon'

  def install
    # ENV.j1  # if your formula's build system can't parallelize
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "superfastmatch"
  end
end
