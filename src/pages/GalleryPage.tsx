import { motion } from 'framer-motion';
import Gallery from '../components/gallery/Gallery';

const GalleryPage = () => {
  return (
    <motion.main
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      transition={{ duration: 0.5 }}
      className="pt-20"
    >
      <Gallery />
    </motion.main>
  );
};

export default GalleryPage;