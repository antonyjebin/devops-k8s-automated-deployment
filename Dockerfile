# Use lightweight and secure base image
FROM nginx:alpine

# Create non-root user for security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Remove default nginx config if needed (optional)
# RUN rm /etc/nginx/conf.d/default.conf

# Copy application files
COPY app/index.html /usr/share/nginx/html/index.html

# Set correct ownership
RUN chown -R appuser:appgroup /usr/share/nginx/html

# Switch to non-root user
USER appuser

# Expose application port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]