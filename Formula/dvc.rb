class Dvc < Formula
  include Language::Python::Virtualenv

  desc "Git for data science projects"
  homepage "https://dvc.org"
  url "https://files.pythonhosted.org/packages/3b/b4/ce4044ef79ac816487b82109c38b022b9ac1d08e0c0791adcc7d9e6460a4/dvc-2.5.0.tar.gz"
  sha256 "eefe92f989813b0494fdc74e06325c2a8ded6c64fb821aa081e90e0185b4d31b"
  license "Apache-2.0"

  bottle do
    sha256 cellar: :any,                 arm64_big_sur: "3512cfeaca73e7e99a355e6c4c56c8d49a88b78daee87e6e81ad38d6e3161ff6"
    sha256 cellar: :any,                 big_sur:       "a72c2c870573b5b5cc1ca3b0411b5fd77fbe5be61d50ad549b29c86ee630ed69"
    sha256 cellar: :any,                 catalina:      "2154bbb155694e4e6d3ae2f2753e0366f88ba393180378163422d60e8d6b3d6b"
    sha256 cellar: :any,                 mojave:        "9a3ec1f057b7770d6713228a0d06cd6bb6f4c679f2503c0fc2997182b942f40d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ba4cb0098ac63a449002650eebec8acc371c3cae94c99a791e1667ad205a3c64"
  end

  depends_on "pkg-config" => :build
  # for cryptograpy (required by azure deps)
  depends_on "rust" => :build
  depends_on "apache-arrow"
  depends_on "libgit2"
  depends_on "openssl@1.1"
  depends_on "protobuf"
  depends_on "python-tabulate"
  depends_on "python@3.9"
  depends_on "six"

  # When updating, check that the extra packages in pypi_formula_mappings.json
  # correctly reflects the following extra packages in setup.py:
  # gs, s3, azure, oss, ssh, gdrive, webdav (hdfs is provided by apache-arrow)
  resource "adal" do
    url "https://files.pythonhosted.org/packages/90/d7/a829bc5e8ff28f82f9e2dc9b363f3b7b9c1194766d5a75105e3885bfa9a8/adal-1.2.7.tar.gz"
    sha256 "d74f45b81317454d96e982fd1c50e6fb5c99ac2223728aea8764433a39f566f1"
  end

  resource "adlfs" do
    url "https://files.pythonhosted.org/packages/60/fd/5c4721e295dc28c5bced9ddcf3f0c4466ec72209d2051ebc3077af2c4aa7/adlfs-0.7.7.tar.gz"
    sha256 "5ce04d7a990a060582e44df6260a610741aa9fdf23a8a08644921648ad443cfa"
  end

  resource "aiobotocore" do
    url "https://files.pythonhosted.org/packages/e6/e3/767e29c93bf7d222168ece841e3e1cfe13945aab300c31787f8299d9abf0/aiobotocore-1.3.1.tar.gz"
    sha256 "8ecee55346651e0f4cbda883e3e16cfe11460b8d7adcc08d0017cbb867636ae1"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/99/f5/90ede947a3ce2d6de1614799f5fea4e93c19b6520a59dc5d2f64123b032f/aiohttp-3.7.4.post0.tar.gz"
    sha256 "493d3299ebe5f5a7c66b9819eacdcfbbaaf1a8e84911ddffcdc48888497afecf"
  end

  resource "aioitertools" do
    url "https://files.pythonhosted.org/packages/dc/a0/f149e54ea082e5f4ae71c68e8e72cab8749283329a7c2747336ef7b68dc0/aioitertools-0.7.1.tar.gz"
    sha256 "54a56c7cf3b5290d1cb5e8974353c9f52c677612b5d69a859369a020c53414a3"
  end

  resource "aliyun-python-sdk-core" do
    url "https://files.pythonhosted.org/packages/39/f4/9ee9c0d081ba6afdacc4037e2d7c671568cbd93c7398743e3fe42662ede8/aliyun-python-sdk-core-2.13.35.tar.gz"
    sha256 "60129b597efb0040df9e2fe3191fec4387889f2eef9c08dc4d5079f35c43837a"
  end

  resource "aliyun-python-sdk-kms" do
    url "https://files.pythonhosted.org/packages/31/8d/5052612578e9237ff5b2c398fe33fa52541ed53f741143893fb8f5f27120/aliyun-python-sdk-kms-2.15.0.tar.gz"
    sha256 "642a3f4f04dcdba5f8a3a0f1edff04479e76df33017a5b25512490ce5894ab2d"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/ff/b7/9730df0dd70a2d77bc03fb5e3dca62735fc6b39719a62eb7785ef070d07e/anyio-3.2.1.tar.gz"
    sha256 "07968db9fa7c1ca5435a133dc62f988d84ef78e1d9b22814a59d1c62618afbc5"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/6a/b4/3b1d48b61be122c95f4a770b2f42fc2552857616feba4d51f34611bd1352/argcomplete-1.12.3.tar.gz"
    sha256 "2c7dbffd8c045ea534921e63b0be6fe65e88599990d8dc408ac8c542b72a5445"
  end

  resource "async-timeout" do
    url "https://files.pythonhosted.org/packages/a1/78/aae1545aba6e87e23ecab8d212b58bb70e72164b67eb090b81bb17ad38e3/async-timeout-3.0.1.tar.gz"
    sha256 "0c3c816a028d47f659d6ff5c745cb2acf1f966da1fe5c19c77a70282b25f4c5f"
  end

  resource "atpublic" do
    url "https://files.pythonhosted.org/packages/ab/3d/3df1468805427fedcf880da42fa26353feea3a31b5a0cc71008adcfdb816/atpublic-2.3.tar.gz"
    sha256 "d6b9167fc3e09a2de2d2adcfc9a1b48d84eab70753c97de3800362e1703e3367"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/ed/d6/3ebca4ca65157c12bd08a63e20ac0bdc21ac7f3694040711f9fd073c0ffb/attrs-21.2.0.tar.gz"
    sha256 "ef6aaac3ca6cd92904cdd0d83f629a15f18053ec84e6432106f7a4d04ae4f5fb"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/9b/6f/c4d598f119f69da1ebd9e0bfdada0b6a2e01e4b5a987a55ce6921dc53629/azure-core-1.16.0.zip"
    sha256 "b1c7d2e01846074f258c8b2e592239aef836a2b1c27d8d0e8491a2c7e2906ef4"
  end

  resource "azure-datalake-store" do
    url "https://files.pythonhosted.org/packages/13/8b/2c151c9f4c3f5345d9a32889e15a471d98e426851b9fcf13dc9f134f5b93/azure-datalake-store-0.0.52.tar.gz"
    sha256 "4198ddb32614d16d4502b43d5c9739f81432b7e0e4d75d30e05149fe6007fea2"
  end

  resource "azure-identity" do
    url "https://files.pythonhosted.org/packages/10/56/e47c21c2cd130c07dd2b5406f7d9c4b582eb63e87189cbf4b3e017040c07/azure-identity-1.6.0.zip"
    sha256 "2e70b00874e4f288e37804bc06bfaf216de8565c759594bf79cccfbf9ca2c78a"
  end

  resource "azure-storage-blob" do
    url "https://files.pythonhosted.org/packages/76/e9/563c5078837173e95f70c7b8ea70d66672d04263b833f02038e73e92faa9/azure-storage-blob-12.8.1.zip"
    sha256 "eb37b50ddfb6e558b29f6c8c03b0666514e55d6170bf4624e7261a3af93c6401"
  end

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/d8/ba/21c475ead997ee21502d30f76fd93ad8d5858d19a3fad7cd153de698c4dd/bcrypt-3.2.0.tar.gz"
    sha256 "5b93c1726e50a93a033c36e5ca7fdcd29a5c7395af50a6892f5d9e7c6cfbfb29"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/7a/1e/570e2446e97bac3d348d0bc6cbf8ac28997ddbef3d97c052f1c476ff48bb/boto3-1.17.49.tar.gz"
    sha256 "a482135c30fa07eaf4370314dd0fb49117222a266d0423b2075aed3835ed1f04"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/49/95/afb61cbea75fb2ba846d5ed4fcc364fbc7b59a998adfe379409a4ee36231/botocore-1.20.49.tar.gz"
    sha256 "f7f103fa0651c69dd360c7d0ecd874854303de5cc0869e0cbc2818a52baacc69"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/52/ba/619250fa6bc11ce6aa4de0604d45843090a53cd7d10d7253b89669313370/cachetools-4.2.2.tar.gz"
    sha256 "61b5ed1e22a0924aed1d23b478f37e8d52549ff8a961de2909c69bf950020cff"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6d/78/f8db8d57f520a54f0b8a438319c342c61c22759d8f9a1cd2e2180b5e5ea9/certifi-2021.5.30.tar.gz"
    sha256 "2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/a8/20/025f59f929bbcaa579704f443a438135918484fffaacfaddba776b374563/cffi-1.14.5.tar.gz"
    sha256 "fd78e5fee591709f32ef6edb9a015b4aa1a5022598e36227500c8f4e02328d9c"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
    sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "commonmark" do
    url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
    sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
  end

  resource "configobj" do
    url "https://files.pythonhosted.org/packages/64/61/079eb60459c44929e684fa7d9e2fdca403f67d64dd9dbac27296be2e0fab/configobj-5.0.6.tar.gz"
    sha256 "a2f5650770e1c87fb335af19a9b7eb73fc05ccf22144eb68db7d00cd2bcb0902"
  end

  resource "crcmod" do
    url "https://files.pythonhosted.org/packages/6b/b0/e595ce2a2527e169c3bcd6c33d2473c1918e0b7f6826a043ca1245dd4e5b/crcmod-1.7.tar.gz"
    sha256 "dc7051a0db5f2bd48665a990d3ec1cc305a466a77358ca4492826f41f283601e"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/9b/77/461087a514d2e8ece1c975d8216bc03f7048e6090c5166bc34115afdaa53/cryptography-3.4.7.tar.gz"
    sha256 "3d10de8116d25649631977cb37da6cbdd2d6fa0e0281d014a5b7d337255ca713"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/da/93/84fa12f2dc341f8cf5f022ee09e109961055749df2d0c75c5f98746cfe6c/decorator-4.4.2.tar.gz"
    sha256 "e3a62f0520172440ca0dcc823749319382e377f37f140a0b99ef45fecb84bfe7"
  end

  resource "dictdiffer" do
    url "https://files.pythonhosted.org/packages/08/bf/9e878ffc50cbe57b63b46dee9f7689c8e1d6fa1c6b65f18a582c3e1a5ebd/dictdiffer-0.8.1.tar.gz"
    sha256 "1adec0d67cdf6166bda96ae2934ddb5e54433998ceab63c984574d187cc563d2"
  end

  resource "diskcache" do
    url "https://files.pythonhosted.org/packages/49/07/079b8b4eb2aba194fca4562c7f014ea45a40130ebff539628c05c52d9050/diskcache-5.2.1.tar.gz"
    sha256 "1805acd5868ac10ad547208951a1190a0ab7bbff4e70f9a07cde4dbdfaa69f64"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/a6/a4/75064c334d8ae433445a20816b788700db1651f21bdb0af33db2aab142fe/distro-1.5.0.tar.gz"
    sha256 "0e58756ae38fbd8fc3020d54badb8eae17c5b9dcbed388b17bb55b8a5928df92"
  end

  resource "dpath" do
    url "https://files.pythonhosted.org/packages/60/3f/562b045ad2542ab1279bbc5a05a62511c1ea1d8b5987fb0a50ee78704621/dpath-2.0.1.tar.gz"
    sha256 "bea06b5f4ff620a28dfc9848cf4d6b2bfeed34238edeb8ebe815c433b54eb1fa"
  end

  resource "dulwich" do
    url "https://files.pythonhosted.org/packages/85/f1/eab86c0058d2195ec084dd200c3e4179871e13e4f38f17ff3f6c7dee3c56/dulwich-0.20.23.tar.gz"
    sha256 "402e56b5c07f040479d1188e5c2f406e2c006aa3943080155d4c6d05e5fca865"
  end

  resource "flatten-dict" do
    url "https://files.pythonhosted.org/packages/2b/cb/dea9926b4e79df94e974052294ee4dc02a97c4b8a02dadeb81857a364102/flatten-dict-0.4.0.tar.gz"
    sha256 "e687a07c03fe3f65cce5bcbf348612facd4f7fddd08d1761a5fee4456d17ccd4"
  end

  resource "flufl.lock" do
    url "https://files.pythonhosted.org/packages/1e/68/393c148df629f90a919de653ebb967a8bd8c83d07d2bc3150ca0faff3940/flufl.lock-3.2.tar.gz"
    sha256 "a8d66accc9ab41f09961cd8f8db39f9c28e97e2769659a3567c63930a869ff5b"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/1a/20/8ec5de42fd99fbefa4e956773785940dbb61abc034ef16e033c038ea6a25/fsspec-2021.6.1.tar.gz"
    sha256 "2cdaafb51dd71e062afffcabcbc4925acef95f9bdd8d822d2010e4bf92951bd7"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/af/da/d215a091986e5f01b80f5145cff6f22e2dc57c6b048aab2e882a07018473/ftfy-6.0.3.tar.gz"
    sha256 "ba71121a9c8d7790d3e833c6c1021143f3e5c4118293ec3afb5d43ed9ca8e72b"
  end

  resource "funcy" do
    url "https://files.pythonhosted.org/packages/b2/74/6a505bf9f0dca368970f3549d0ceab1e21ae212bf74214169ec0def6fe4f/funcy-1.16.tar.gz"
    sha256 "2775409b7dc9106283f1224d97e6df5f2c02e7291c8caed72764f5a115dffb50"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/45/0b/38b06fd9b92dc2b68d58b75f900e97884c45bedd2ff83203d933cf5851c9/future-0.18.2.tar.gz"
    sha256 "b1bead90b70cf6ec3f0710ae53a525360fa360d306a86583adc6bf83a4db537d"
  end

  resource "gcsfs" do
    url "https://files.pythonhosted.org/packages/20/f5/87c8281893f8b6aac0f19c3c852d75663f6799885b22d7243c0be95535b9/gcsfs-2021.6.1.tar.gz"
    sha256 "ff2b2c9ef1971b72971aa8580173aa840472fe3604d9751ab8918217300fe3d5"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/34/fe/9265459642ab6e29afe734479f94385870e8702e7f892270ed6e52dd15bf/gitdb-4.0.7.tar.gz"
    sha256 "96bf5c08b157a666fec41129e6d327235284cca4c81e92109260f353ba138005"
  end

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/29/22/3d591875078c1c5e7e11b478616821995053968a74b76043c55448c46381/GitPython-3.1.18.tar.gz"
    sha256 "b838a895977b45ab6f0cc926a9045c8d1c44e2b653c1fcc39fe91f42c6e8f05b"
  end

  resource "google-api-core" do
    url "https://files.pythonhosted.org/packages/7a/05/bac134ab5e9705141ae37d8a4a29147f320cb159e81a6f4e00b452e55593/google-api-core-1.30.0.tar.gz"
    sha256 "0724d354d394b3d763bc10dfee05807813c5210f0bd9b8e2ddf6b6925603411c"
  end

  resource "google-api-python-client" do
    url "https://files.pythonhosted.org/packages/f2/5d/2c2d1917f043322ad4ce785daa390ce3b925254f7b49e795554000aefb64/google-api-python-client-2.11.0.tar.gz"
    sha256 "47479436c0d21062ce5646465aa90232b2a458514e8f27c1ddd226abd9f127af"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/a5/76/7302823a61f723296e8d21cffac8f341cd826627a52ec95d91a6701bf8c8/google-auth-1.32.1.tar.gz"
    sha256 "c7c215c74348ef24faef2f7b62f6d8e6b38824fe08b1e7b7b09a02d397eda7b3"
  end

  resource "google-auth-httplib2" do
    url "https://files.pythonhosted.org/packages/c6/b5/a9e956fd904ecb34ec9d297616fe98fa4106fc12f3b0a914dec983c267b9/google-auth-httplib2-0.1.0.tar.gz"
    sha256 "a07c39fd632becacd3f07718dfd6021bf396978f03ad3ce4321d060015cc30ac"
  end

  resource "google-auth-oauthlib" do
    url "https://files.pythonhosted.org/packages/cd/b3/3897aefd988da1bd45953ace5c4fe9451a14aa0ada1f5d0bbb4d8d9e77be/google-auth-oauthlib-0.4.4.tar.gz"
    sha256 "09832c6e75032f93818edf1affe4746121d640c625a5bef9b5c96af676e98eee"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/1f/4a/369a8b1cf12089c1a902101b0431729e02cd2dd4e390377c920aa1d3ccab/googleapis-common-protos-1.53.0.tar.gz"
    sha256 "a88ee8903aa0a81f6c3cec2d5cf62d3c8aa67c06439b0496b49048fb1854ebf4"
  end

  resource "grandalf" do
    url "https://files.pythonhosted.org/packages/a2/3f/df0618a962a1744e932f2a4547cb786f5a93df7e2476c99e7f7dbd68039f/grandalf-0.6.tar.gz"
    sha256 "7471db231bd7338bc0035b16edf0dc0c900c82d23060f4b4d0c4304caedda6e4"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/bd/e9/72c3dc8f7dd7874812be6a6ec788ba1300bfe31570963a7e788c86280cb9/h11-0.12.0.tar.gz"
    sha256 "47222cb6067e4a307d535814917cd98fd0a57b6788ce715755fa2b6c28b56042"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/41/08/f5f998964b4c60944ae1aad4b0d377d76c4c564c689ac780cfe3c88a46e6/httpcore-0.13.6.tar.gz"
    sha256 "b0d16f0012ec88d8cc848f5a55f8a03158405f4bca02ee49bc4ca2c1fda49f3e"
  end

  resource "httplib2" do
    url "https://files.pythonhosted.org/packages/ed/cd/533a1e9e04671bcee5d2854b4f651a3fab9586d698de769d93b05ee2bff1/httplib2-0.19.1.tar.gz"
    sha256 "0b12617eeca7433d4c396a100eaecfa4b08ee99aa881e6df6e257a7aad5d533d"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/c6/57/4db75d83f350813414c2f52318862f52ce29bc0ebaa97b71c9202af32d79/httpx-0.18.2.tar.gz"
    sha256 "9f99c15d33642d38bce8405df088c1c4cfd940284b4290cacbfb02e64f4877c6"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "invoke" do
    url "https://files.pythonhosted.org/packages/f0/bf/12827f26d127549b0c17aeb075b8bec2b0a48873418c51fca4bfcd0bd985/invoke-1.5.0.tar.gz"
    sha256 "f0c560075b5fb29ba14dad44a7185514e94970d1b9d57dcd3723bec5fed92650"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/b1/80/fb8c13a4cd38eb5021dc3741a9e588e4d1de88d895c1910c6fc8a08b7a70/isodate-0.6.0.tar.gz"
    sha256 "2e364a3d5759479cdb2d37cce6b9376ea504db2ff90252a2e5b7cc89cc9ff2d8"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "jsonpath-ng" do
    url "https://files.pythonhosted.org/packages/c5/d0/c4b2fa7e00e69670a92b103761b4e10a4bdaca109818d44753219c20b7be/jsonpath-ng-1.5.2.tar.gz"
    sha256 "144d91379be14d9019f51973bd647719c877bfc07dc6f3f5068895765950c69d"
  end

  resource "knack" do
    url "https://files.pythonhosted.org/packages/b2/4f/4c6fc2ee28055b961ebbbbed5e7f645c70e25b774b564ae152e3aa62ce9e/knack-0.8.2.tar.gz"
    sha256 "4eaa50a1c5e79d1c5c8e5e1705b661721b0b83a089695e59e229cc26c64963b9"
  end

  resource "mailchecker" do
    url "https://files.pythonhosted.org/packages/7a/7e/83709e6d33d61cfa016d68170b005d0604a6546b2b10bde34307cae975f4/mailchecker-4.0.10.tar.gz"
    sha256 "571f295c2534e20ab096915681ed57e851e2ea18e7c34bde1f5304e175ae68cf"
  end

  resource "msal" do
    url "https://files.pythonhosted.org/packages/17/b9/9fea411e798b7baee669fe893bae6d51df8610b6d0edb77349c7a50a59e8/msal-1.12.0.tar.gz"
    sha256 "5cc93f09523c703d4e00a901cf719ade4faf2c3d14961ba52060ae78d5b25327"
  end

  resource "msal-extensions" do
    url "https://files.pythonhosted.org/packages/8e/76/32e0bc0ab99c439aadf854751601bf9ad8aca01c884cf30fab0a29746c6b/msal-extensions-0.3.0.tar.gz"
    sha256 "5523dfa15da88297e90d2e73486c8ef875a17f61ea7b7e2953a300432c2e7861"
  end

  resource "msrest" do
    url "https://files.pythonhosted.org/packages/bb/2c/e8ac4f491efd412d097d42c9eaf79bcaad698ba17ab6572fd756eb6bd8f8/msrest-0.6.21.tar.gz"
    sha256 "72661bc7bedc2dc2040e8f170b6e9ef226ee6d3892e01affd4d26b06474d68d8"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/1c/74/e8b46156f37ca56d10d895d4e8595aa2b344cff3c1fb3629ec97a8656ccb/multidict-5.1.0.tar.gz"
    sha256 "25b4e5f22d3a37ddf3effc0710ba692cfc792c2b9edfb9c05aefe823256e84d5"
  end

  resource "nanotime" do
    url "https://files.pythonhosted.org/packages/d5/54/6d5924f59cf671326e7809f4b3f70fa8df535d67e952ad0b6fea02f52faf/nanotime-0.5.2.tar.gz"
    sha256 "c7cc231fc5f6db401b448d7ab51c96d0a4733f4b69fabe569a576f89ffdf966b"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/b0/21/adfbf6168631e28577e4af9eb9f26d75fe72b2bb1d33762a5f2c425e6c2a/networkx-2.5.1.tar.gz"
    sha256 "109cd585cac41297f71103c3c42ac6ef7379f29788eb54cb751be5a663bb235a"
  end

  resource "oauth2client" do
    url "https://files.pythonhosted.org/packages/a6/7b/17244b1083e8e604bf154cf9b716aecd6388acd656dd01893d0d244c94d9/oauth2client-4.1.3.tar.gz"
    sha256 "d486741e451287f69568a4d26d70d9acd73a2bbfa275746c535b4209891cccc6"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/9e/84/001a3f8d9680f3b26d5e7711e13d5ff92e4b511766a72ac6b4a4e5f06796/oauthlib-3.1.1.tar.gz"
    sha256 "8f0215fcc533dd8dd1bee6f4c412d4f0cd7297307d43ac61666389e3bc3198a3"
  end

  resource "oss2" do
    url "https://files.pythonhosted.org/packages/4e/0a/c2c1bc04f2b0c43e5b54ade829f4e8c35aa13db42171252b1dd62780ffa5/oss2-2.14.0.tar.gz"
    sha256 "7fed58200da934ad4b8c1fb2754a1ac6bfd40a073f35e65b94880268b9f7fb48"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/86/aef78bab3afd461faecf9955a6501c4999933a48394e90f03cd512aad844/packaging-21.0.tar.gz"
    sha256 "7dc96269f53a4ccec5c0670940a4281106dd0bb343f47b7471f779df49c2fbe7"
  end

  resource "paramiko" do
    url "https://files.pythonhosted.org/packages/cf/a1/20d00ce559a692911f11cadb7f94737aca3ede1c51de16e002c7d3a888e0/paramiko-2.7.2.tar.gz"
    sha256 "7f36f4ba2c0d81d219f4595e35f70d56cc94f9ac40a6acdf51d6ca210ce65035"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/b7/64/e097eea8dcd2b2f7df6e4425fc98e7494e37b1a6e149603c31d327080a05/pathspec-0.8.1.tar.gz"
    sha256 "86379d6b86d75816baba717e64b1a3a3469deb93bb76d613c9ce79edc5cb68fd"
  end

  resource "phonenumbers" do
    url "https://files.pythonhosted.org/packages/07/d6/ce91de86166b68b5d1a2a42bb4e10672f1e7b6a1fda4c758e81ef472c4e9/phonenumbers-8.12.26.tar.gz"
    sha256 "65bab6ebdbe0ec5196c74626949748db5337d23895aabc1ef8f5d7284787998a"
  end

  resource "ply" do
    url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
    sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/31/e3/b75d97109c793db0e23bcad15ab642da7517fe8dd6ad31567ed66ff51760/portalocker-1.7.1.tar.gz"
    sha256 "6d6f5de5a3e68c4dd65a98ec1babb26d28ccc5e770e07b672d65d5a35e4b2d8a"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/e1/b0/7276de53321c12981717490516b7e612364f2cb372ee8901bd4a66a000d7/psutil-5.8.0.tar.gz"
    sha256 "0c9ccb99ab76025f2f0bbecf341d4656e9c1351db8cc8a03ccd62e318ab4b5c6"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/a4/db/fffec68299e6d7bad3d504147f9094830b704527a7fc098b721d38cc7fa7/pyasn1-0.4.8.tar.gz"
    sha256 "aef77c9fb94a3ac588e87841208bdec464471d9871bd5050a287cc9a475cd0ba"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/88/87/72eb9ccf8a58021c542de2588a867dbefc7556e14b2866d1e40e9e2b587e/pyasn1-modules-0.2.8.tar.gz"
    sha256 "905f84c712230b2c592c19470d3ca8d552de726050d1d1716282a1f6146be65e"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
    sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
  end

  resource "pycryptodome" do
    url "https://files.pythonhosted.org/packages/88/7f/740b99ffb8173ba9d20eb890cc05187677df90219649645aca7e44eb8ff4/pycryptodome-3.10.1.tar.gz"
    sha256 "3e2e3a06580c5f190df843cdb90ea28d61099cf4924334d5297a995de68e4673"
  end

  resource "pydot" do
    url "https://files.pythonhosted.org/packages/13/6e/916cdf94f9b38ae0777b254c75c3bdddee49a54cc4014aac1460a7a172b3/pydot-1.4.2.tar.gz"
    sha256 "248081a39bcb56784deb018977e428605c1c758f10897a339fce1dd728ff007d"
  end

  resource "PyDrive2" do
    url "https://files.pythonhosted.org/packages/9c/21/69756c3b06e6214063ac3cf960eb120a1342e90c7dc3bda05afa80b35e6e/PyDrive2-1.8.3.tar.gz"
    sha256 "d2217ba2feabcd13c97269b7e83ac975e33c1110bc2f4bd7d36b3e74349c011d"
  end

  resource "pygit2" do
    url "https://files.pythonhosted.org/packages/6b/23/a8c5b726a58282fe2cadcc63faaddd4be147c3c8e0bd38b233114adf98fd/pygit2-1.6.1.tar.gz"
    sha256 "c3303776f774d3e0115c1c4f6e1fc35470d15f113a7ae9401a0b90acfa1661ac"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/ba/6e/7a7c13c21d8a4a7f82ccbfe257a045890d4dbf18c023f985f565f97393e3/Pygments-2.9.0.tar.gz"
    sha256 "a18f47b506a429f6f4b9df81bb02beab9ca21d0a5fee38ed15aef65f0545519f"
  end

  resource "pygtrie" do
    url "https://files.pythonhosted.org/packages/a5/8b/90d0f21a27a354e808a73eb0ffb94db990ab11ad1d8b3db3e5196c882cad/pygtrie-2.4.2.tar.gz"
    sha256 "43205559d28863358dbbf25045029f58e2ab357317a59b11f11ade278ac64692"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/0c/c6/3cdc7cb1289b35186fd7fd61836b6d83632ca0f7eee552516777361667b1/PyJWT-2.1.0.tar.gz"
    sha256 "fba44e7898bbca160a2b2b501f492824fc8382485d3a6f11ba5d0c1937ce6130"
  end

  resource "PyNaCl" do
    url "https://files.pythonhosted.org/packages/cf/5a/25aeb636baeceab15c8e57e66b8aa930c011ec1c035f284170cacb05025e/PyNaCl-1.4.0.tar.gz"
    sha256 "54e9a2c849c742006516ad56a88f5c74bf2ce92c9f67435187c3c5953b346505"
  end

  resource "pyOpenSSL" do
    url "https://files.pythonhosted.org/packages/98/cd/cbc9c152daba9b5de6094a185c66f1c6eb91c507f378bb7cad83d623ea88/pyOpenSSL-20.0.1.tar.gz"
    sha256 "4c231c759543ba02560fcd2480c48dcec4dae34c9da7d3747c508227e0624b51"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/c1/47/dfc9c342c9842bbe0036c7f763d2d6686bcf5eb1808ba3e170afdb282210/pyparsing-2.4.7.tar.gz"
    sha256 "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8ead507bc3246ecc1"
  end

  resource "python-benedict" do
    url "https://files.pythonhosted.org/packages/28/7b/9d97c4a59d9624b02400b8e2cc1a728995059c1e196a62a9899504717e6d/python-benedict-0.24.0.tar.gz"
    sha256 "1aa65ea78bd0bfd269e9289edb05d6f4e82ce62669ad0604a27d80db00a1a575"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "python-fsutil" do
    url "https://files.pythonhosted.org/packages/eb/0c/96feb0054e570094bfb6a3d67ac5565386e9691b4edd1a6adc7a57549105/python-fsutil-0.5.0.tar.gz"
    sha256 "02a347540d10c1616390a536ced73fd67df8d01c499f497d0ab3de3fbb236f0e"
  end

  resource "python-slugify" do
    url "https://files.pythonhosted.org/packages/bc/a4/57893fbaf7cbf303a4f2307564cf83855a5f2cc34544656e7263125a0d1e/python-slugify-5.0.2.tar.gz"
    sha256 "f13383a0b9fcbe649a1892b9c8eb4f8eab1d6d84b84bb7a624317afa98159cab"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/b0/61/eddc6eb2c682ea6fd97a7e1018a6294be80dba08fa28e7a3570148b4612d/pytz-2021.1.tar.gz"
    sha256 "83a4a90894bf38e243cf052c8b58f381bfe9a7a483f6a9cab140bc7f702ac4da"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
    sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/23/eb/68fc8fa86e0f5789832f275c8289257d8dc44dbe93fce7ff819112b9df8f/requests-oauthlib-1.3.0.tar.gz"
    sha256 "b4261601a71fd721a8bd6d7aa1cc1d6a8a93b4a9f5e96626f8e4d91e8beeaa6a"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/79/30/5b1b6c28c105629cc12b33bdcbb0b11b5bb1880c6cfbd955f9e792921aa8/rfc3986-1.5.0.tar.gz"
    sha256 "270aaf10d87d0d4e095063c65bf3ddbc6ee3d0b226328ce21e036f946e421835"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/93/41/79e947ce1e2e6132afcc13e617b2c1bcce90f481cf78e652f8c986b19162/rich-10.5.0.tar.gz"
    sha256 "f8a16484b3d70708bdafd04f659f9ca0e2c0129b33a343c10c734838d361777f"
  end

  resource "rsa" do
    url "https://files.pythonhosted.org/packages/db/b5/475c45a58650b0580421746504b680cd2db4e81bc941e94ca53785250269/rsa-4.7.2.tar.gz"
    sha256 "9d689e6ca1b3038bc82bf8d23e944b6b6037bc02301a574935b2dd946e0353b9"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/83/59/4f576abb336d30b3d47061717224be714a9dc39c774061c34cb41c1795cf/ruamel.yaml-0.17.10.tar.gz"
    sha256 "106bc8d6dc6a0ff7c9196a47570432036f41d556b779c6b4e618085f57e39e67"
  end

  resource "ruamel.yaml.clib" do
    url "https://files.pythonhosted.org/packages/8b/25/08e5ad2431a028d0723ca5540b3af6a32f58f25e83c6dda4d0fcef7288a3/ruamel.yaml.clib-0.2.6.tar.gz"
    sha256 "4ff604ce439abb20794f05613c374759ce10e3595d1867764dd1ae675b85acbd"
  end

  resource "s3fs" do
    url "https://files.pythonhosted.org/packages/0a/d6/602d32b1a5d4e9cb7390e1715a9cfdb9f06ddd77d6eb152af3cec06a051c/s3fs-2021.6.1.tar.gz"
    sha256 "4cf46d52c7f7b0fc240d3a1e2cd0d58b72d9f6de09fe7ef212a43aa20b89932c"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/66/f5/5ca537483fa5e96fbd455f52a69fc70c5f659f7e8c9189a1dbc211e1ccf9/s3transfer-0.3.7.tar.gz"
    sha256 "35627b86af8ff97e7ac27975fe0a98a312814b46c6333d8a6b889627bcd80994"
  end

  resource "shortuuid" do
    url "https://files.pythonhosted.org/packages/6f/e0/a881ca1332e9195acb4c2b912d58a4278f6950e118b628188e2bc8830589/shortuuid-1.0.1.tar.gz"
    sha256 "3c11d2007b915c43bee3e10625f068d8a349e04f0d81f08f5fa08507427ebf1f"
  end

  resource "shtab" do
    url "https://files.pythonhosted.org/packages/4f/9f/1718447f3db4ddc308da97135bdb2a5df325301f99c9a02b8c3e95e573e9/shtab-1.3.6.tar.gz"
    sha256 "7e587e2889b4e51339b6c59c956b3f0eb5194113967d913515025406d5be849c"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/dd/d4/2b4f196171674109f0fbb3951b8beab06cd0453c1b247ec0c4556d06648d/smmap-4.0.0.tar.gz"
    sha256 "7e65386bd122d45405ddf795637b7f7d2b532e7e401d46bbe3fb49b9986d5182"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a6/ae/44ed7978bcb1f6337a3e2bef19c941de750d73243fc9389140d62853b686/sniffio-1.2.0.tar.gz"
    sha256 "c4666eecec1d3f50960c6bdf61ab7bc350648da6c126e3cf6898d8cd4ddcd3de"
  end

  resource "text-unidecode" do
    url "https://files.pythonhosted.org/packages/ab/e2/e9a00f0ccb71718418230718b3d900e71a5d16e701a3dae079a21e9cd8f8/text-unidecode-1.3.tar.gz"
    sha256 "bad6603bb14d279193107714b288be206cac565dfa49aa5b105294dd5c4aab93"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/f2/9c/99aae7670351c694c60c72e3cc834b7eab396f738b391bd0bdfc5101a663/tqdm-4.61.1.tar.gz"
    sha256 "24be966933e942be5f074c29755a95b315c69a91f839a29139bf26ffffe2d3fd"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/aa/55/62e2d4934c282a60b4243a950c9dbfa01ae7cac0e8d6c0b5315b87432c81/typing_extensions-3.10.0.0.tar.gz"
    sha256 "50b6f157849174217d0656f99dc82fe932884fb250826c18350e159ec6cdf342"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/42/da/fa9aca2d866f932f17703b3b5edb7b17114bb261122b6e535ef0d9f618f8/uritemplate-3.0.1.tar.gz"
    sha256 "5af8ad10cec94f215e3f48112de2022e1d5a37ed427fbd88652fa908f2ab7cae"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/4f/5a/597ef5911cb8919efe4d86206aa8b2658616d676a7088f0825ca08bd7cb8/urllib3-1.26.6.tar.gz"
    sha256 "f57b4c16c62fa2760b7e3d97c35b255512fb6b59a259730f36ba32ce9f8e342f"
  end

  resource "voluptuous" do
    url "https://files.pythonhosted.org/packages/17/0d/6e1e3ab6653720903efd7f644cc5be839d59ceb396143c08c1bebeab080b/voluptuous-0.12.1.tar.gz"
    sha256 "663572419281ddfaf4b4197fd4942d181630120fb39b333e3adad70aeb56444b"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/89/38/459b727c381504f361832b9e5ace19966de1a235d73cdbdea91c771a1155/wcwidth-0.2.5.tar.gz"
    sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
  end

  resource "webdav4" do
    url "https://files.pythonhosted.org/packages/bf/67/b640fdf2add7bcf4317b91bcf161b784a4dff5bd26353968b3c0b1a5ed0f/webdav4-0.8.2.tar.gz"
    sha256 "35f956bcdd58f79c294d0219da1271d27e34d1e504e77f134980652a557b0ecc"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/82/f7/e43cefbe88c5fd371f4cf0cf5eb3feccd07515af9fd6cf7dbf1d1793a797/wrapt-1.12.1.tar.gz"
    sha256 "b62ffa81fb85f4332a4f609cab4ac40709470da05643a082ec1eb88e6d9b97d7"
  end

  resource "xmltodict" do
    url "https://files.pythonhosted.org/packages/58/40/0d783e14112e064127063fbf5d1fe1351723e5dfe9d6daad346a305f6c49/xmltodict-0.12.0.tar.gz"
    sha256 "50d8c638ed7ecb88d90561beedbf720c9b4e851a9fa6c47ebd64e99d166d8a21"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/97/e7/af7219a0fe240e8ef6bb555341a63c43045c21ab0392b4435e754b716fa1/yarl-1.6.3.tar.gz"
    sha256 "8a9066529240171b68893d60dca86a763eae2139dd42f42106b03cf4b426bf10"
  end

  resource "zc.lockfile" do
    url "https://files.pythonhosted.org/packages/11/98/f21922d501ab29d62665e7460c94f5ed485fd9d8348c126697947643a881/zc.lockfile-2.0.tar.gz"
    sha256 "307ad78227e48be260e64896ec8886edc7eae22d8ec53e4d528ab5537a83203b"
  end

  def install
    venv = virtualenv_create(libexec, Formula["python@3.9"].opt_bin/"python3")
    venv.pip_install resources

    # NOTE: dvc uses this file [1] to know which package it was installed from,
    # so that it is able to provide appropriate instructions for updates.
    # [1] https://github.com/iterative/dvc/blob/0.68.1/dvc/utils/pkg.py
    File.open("dvc/utils/build.py", "w+") { |file| file.write("PKG = \"brew\"") }

    venv.pip_install_and_link buildpath

    (bash_completion/"dvc").write `#{bin}/dvc completion -s bash`
    (zsh_completion/"_dvc").write `#{bin}/dvc completion -s zsh`
  end

  test do
    output = shell_output("#{bin}/dvc doctor 2>&1")
    assert_match "Supports: azure, gdrive, gs, http, https, s3, ssh, oss, webdav, webdavs", output
  end
end
